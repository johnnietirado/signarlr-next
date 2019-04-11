# NextJS with SignalR

The issue can be found in `index.tsx` line 11-16

To reproduce error:
- in terminal run: `now`
- access url assigned to project
- 502 page will show

If you remove the code in question and run `now` and access site, you will see no error.

Using `now 15.0.3`

**Behavior**: Now throws a 502 error with logs showing

```
Unable to import module 'now__launcher': Error
    at Function.Module._resolveFilename (module.js:547:15)
    at Function.Module._load (module.js:474:25)
    at Module.require (module.js:596:17)
    at require (internal/module.js:11:18)
    at Object.17+L (/var/task/page.js:1:17265)
    at __webpack_require__ (/var/task/page.js:1:339)
    at Object.qpiX (/var/task/page.js:25:83591)
    at __webpack_require__ (/var/task/page.js:1:339)
    at Object.gs+f (/var/task/page.js:25:24404)
    at __webpack_require__ (/var/task/page.js:1:339)

REPORT RequestId: f465a9b2-e825-420a-a207-716c7c5fb588	
Duration: 3.69 ms  Billed Duration: 100 ms   Memory Size: 3008 MB  Max Memory Used: 62 MB
```

