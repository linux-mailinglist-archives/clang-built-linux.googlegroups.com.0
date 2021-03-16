Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6HYSBAMGQEFKH22BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D64733E088
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 22:31:48 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id b15sf26288189qvz.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 14:31:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615930307; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mpw1dsRv4+5UFimksMZ8TTyxljgnI/cJ6xcw4dxgwGlVyvn3bjWjwJ12FRG9/rHHz/
         zkGuSNNrbN1SzIljgFOqU+wfv7lvrHO7c+KZIDxmZ1xAgL6HgA98dKeS7M5q3/MqGaR1
         21Q4Rdvi/gy/0+6veqJs6bVxxfD+iiYu+0+s+6T0ugNGIeDDHn6p7yRaZYaD2hSofZWg
         7YM0wQQ7CBi56nTEo+06i0SaOOgfAMvHf996E/wjpSF02f7RXOmXL5iFh6fabDTTBG6C
         Tdp+/qMQcKNAoFgvF51GLt5lt5yjGW0sNUtR7uyKwAxCC14/zgB/cE+9HDHdV9q4vU9+
         LFQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=f934BvyuLkfVXoy0AOuERxP/Krdff3l5JRBmYJD7uOU=;
        b=wdBo5wSPiRbiA4amslmWKeKoPy5IOTOCjqLCFYwuv506cAGOZ2DI5a5rAI6Qlo6l/N
         Yn9O2Yiqp4GGNBx7JKRxYG9hHJAuq3FlYaC64xfyD1ivu7Dst69+cKmEylvwvXd8Z9GX
         Nx0JyF92ScwU9C0imEr+cYvqxHIQ1E5ET1+0ArINyTmaYcWvEJorkU2QmXMmwKoSn2H7
         hji5wghlEFnGYDOgPuGNi1OktYS9RHSMDH5ORx9pBcDx7pjoxQ2aoKSZvoofnqWNBecc
         hbpGrvFKutyj0hvJ2O2siVeqKgFqpNRZPnNcZ9+T/VKIjAPt6PA9Tt6HvnvMJnbzisWg
         aTiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VKidfvf+;
       spf=pass (google.com: domain of 3winryawkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3wiNRYAwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=f934BvyuLkfVXoy0AOuERxP/Krdff3l5JRBmYJD7uOU=;
        b=suvSBrSajOx1VtoXz9vtjBX9iR1ObsEs1IVT/MJN/3IiKp83WDemW5rnW9LmCEclbg
         aA3TJRavE1/7YmNYXO7Shx4di+WNAYhq/OMFcIBc1E+BxCzuMLVTVWQM6A9i1NQDFq0d
         8Ro1m3z8u7QtI+0pzYthCBa0KElN5L3ykhSBrClfqIR1ycr/DkO2rLjCVIdgzmitCjBD
         A7xQpjgM85b04+hp28Pp7eqQEmX+C/ubmsqdOeN1WqVobXy+G4a7GkWRjX9A0oL/nUTl
         /uwQbgQxXwAMpIcUVLalU7AgngzlzGKulprJ2N/knnJBPHrwhXZrAXqvFmAzIaCCWbMX
         H7Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f934BvyuLkfVXoy0AOuERxP/Krdff3l5JRBmYJD7uOU=;
        b=brA+7uh12GaLibSehpzHmeVJohRKcfZD8n/vLyKjV8LPXTEMUdRBS6JirNp+35kcke
         V6PoOFrbSY2J0J9dUUnhyQSF+ZTm8Am56E6unLyFTzvxJRcFM4P97lsmRj6/26CA6rnq
         FGoIFRsqX+mAsGycQFdV+31dmngXBFeBAxRgdy2GzGKP9CKRIKQNuZ89eOhgRGuS4xeS
         ++HeteXs7+m6BUMawbIL/T6uacbO4fDqLj1/SRTPwd3GhYzqx79YEqdmgereQn+qANER
         PEOoQq69cPKHOn97W3nBpbZFZzNzA/pXXTKCjVyuZ+MVkWG4J9AZrTAOdGjjI2o8o7DE
         +GQg==
X-Gm-Message-State: AOAM533cR3L8q5zU80+Ysn93o1ZJppR1D7xy71uivt5o5B4KvooPuxZ7
	YR9g+Tkmcqq6kikFTzTLPO8=
X-Google-Smtp-Source: ABdhPJxUGSgnZqg8xQIGO4o2+n2VIAJqNw/UayGLQCDTSq9RMqSZY6Bv8Rwqe84hIWYbXzMKYry4bw==
X-Received: by 2002:ac8:534a:: with SMTP id d10mr809430qto.353.1615930307694;
        Tue, 16 Mar 2021 14:31:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4f10:: with SMTP id b16ls2636025qte.7.gmail; Tue, 16 Mar
 2021 14:31:47 -0700 (PDT)
X-Received: by 2002:aed:3a23:: with SMTP id n32mr886842qte.198.1615930307167;
        Tue, 16 Mar 2021 14:31:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615930307; cv=none;
        d=google.com; s=arc-20160816;
        b=wSzxWqpIcdbeUP/DgiiZlyH3J7IWcNpO+bRMui/XeQ2UBa7fQW2/aKWfkCsn6WAAnK
         r1dGWQkZa0l6vMxavjy3DZKgwDsMYj/gJM4FK1V+dzF4JYwMbSdYR0X0YYCsUCypHr7j
         05TyA5F/NSOzTTPO2ALTSowDQjGsUQvxuwzgWd2dTdjqq8xAXIve/hyS0jmc3UhPOJ/y
         TcX+86FVscO+8l8A5/yxxZ8X0ZlZd+pG4MwUxt9kldy/tdjlIBDQYw5LR9jPweiD8tIA
         vNw1eCVSy2nb3Y3nZRWcnBdA3quKVBXupQkOn+PtTLL73A0eun9V+b1kxGN/ghVvM1SS
         nrLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=9qIl2h84+tEpR/qPDqw7Ia65+Rx0tWJMRUJLpgSeqnM=;
        b=ql/gahOk5+DbmPG8+SX7Y1HNsMWLYHAHAIPrHedb//bmV0aoGUJWfm0QiMJo71JoUZ
         Em4JfvYrk7OQBpVpLuNbI/saTQ2ewDhuJFBBWteY4tYkfR70HOYegSiYfUG70UwXwr0d
         45CWQu0hupfFSOMV6ev48xcjqMcdiTd4yvCuKnEDE/a2xCGT6XbIHiGbPs2Ly59tPgCm
         cje7NpsSKBI05mzXtrvCZSLh9ZtTtxmNX8lwAKpfMJNJFe4U3oPui3Y+L9zLQ46EMUcL
         vFiuSmDwJT5Km+E8LzjlbUQB/z+Tc+YClRaYgQQ91T5tiMX6BUo+gXe/t6pT45znab4O
         e5Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VKidfvf+;
       spf=pass (google.com: domain of 3winryawkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3wiNRYAwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id k7si280163qtu.2.2021.03.16.14.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 14:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3winryawkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id dz17so26226041qvb.14
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 14:31:47 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:b408:7c5f:edf4:6c69])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:2b06:: with SMTP id
 jx6mr1632764qvb.48.1615930306822; Tue, 16 Mar 2021 14:31:46 -0700 (PDT)
Date: Tue, 16 Mar 2021 14:31:33 -0700
Message-Id: <20210316213136.1866983-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH] scripts: stable: add script to validate backports
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: Ard Biesheuvel <ard@kernel.org>, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VKidfvf+;       spf=pass
 (google.com: domain of 3winryawkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3wiNRYAwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

A common recurring mistake made when backporting patches to stable is
forgetting to check for additional commits tagged with `Fixes:`. This
script validates that local commits have a `commit <sha40> upstream.`
line in their commit message, and whether any additional `Fixes:` shas
exist in the `master` branch but were not included. It can not know
about fixes yet to be discovered, or fixes sent to the mailing list but
not yet in mainline.

To save time, it avoids checking all of `master`, stopping early once
we've reached the commit time of the earliest backport. It takes 0.5s to
validate 2 patches to linux-5.4.y when master is v5.12-rc3 and 5s to
validate 27 patches to linux-4.19.y. It does not recheck dependencies of
found fixes; the user is expected to run this script to a fixed point.
It depnds on pygit2 python library for working with git, which can be
installed via:
$ pip3 install pygit2

It's expected to be run from a stable tree with commits applied.  For
example, consider 3cce9d44321e which is a fix for f77ac2e378be. Let's
say I cherry picked f77ac2e378be into linux-5.4.y but forgot
3cce9d44321e (true story). If I ran:

$ ./scripts/stable/check_backports.py
Checking 1 local commits for additional Fixes: in master
Please consider backporting 3cce9d44321e as a fix for f77ac2e378be

So then I could cherry pick 3cce9d44321e as well:
$ git cherry-pick -sx 3cce9d44321e
$ ./scripts/stable/check_backports.py
...
Exception: Missing 'commit <sha40> upstream.' line

Oops, let me fixup the commit message and retry.
$ git commit --amend
<fix commit message>
$ ./scripts/stable/check_backports.py
Checking 2 local commits for additional Fixes: in master
$ echo $?
0

This allows for client side validation by the backports author, and
server side validation by the stable kernel maintainers.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS                       |  1 +
 scripts/stable/check_backports.py | 92 +++++++++++++++++++++++++++++++
 2 files changed, 93 insertions(+)
 create mode 100755 scripts/stable/check_backports.py

diff --git a/MAINTAINERS b/MAINTAINERS
index aa84121c5611..a8639e9277c4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16960,6 +16960,7 @@ M:	Sasha Levin <sashal@kernel.org>
 L:	stable@vger.kernel.org
 S:	Supported
 F:	Documentation/process/stable-kernel-rules.rst
+F:	scripts/stable/
 
 STAGING - ATOMISP DRIVER
 M:	Mauro Carvalho Chehab <mchehab@kernel.org>
diff --git a/scripts/stable/check_backports.py b/scripts/stable/check_backports.py
new file mode 100755
index 000000000000..529294e247ca
--- /dev/null
+++ b/scripts/stable/check_backports.py
@@ -0,0 +1,92 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (C) 2021 Google, Inc.
+
+import os
+import re
+import sys
+
+import pygit2 as pg
+
+
+def get_head_branch(repo):
+    # Walk the branches to find which is HEAD.
+    for branch_name in repo.branches:
+        branch = repo.branches[branch_name]
+        if branch.is_head():
+            return branch
+
+
+def get_local_commits(repo):
+    head_branch = get_head_branch(repo)
+    # Walk the HEAD ref until we hit the first commit from the upstream.
+    walker = repo.walk(repo.head.target)
+    upstream_branch = head_branch.upstream
+    upstream_commit, _ = repo.resolve_refish(upstream_branch.name)
+    walker.hide(upstream_commit.id)
+    commits = [commit for commit in walker]
+    if not len(commits):
+        raise Exception("No local commits")
+    return commits
+
+
+def get_upstream_shas(commits):
+    upstream_shas = []
+    prog = re.compile('commit ([0-9a-f]{40}) upstream.')
+    # For each line of each commit message, record the
+    # "commit <sha40> upstream." line.
+    for commit in commits:
+        found_upstream_line = False
+        for line in commit.message.splitlines():
+            result = prog.search(line)
+            if result:
+                upstream_shas.append(result.group(1)[:12])
+                found_upstream_line = True
+                break
+        if not found_upstream_line:
+            raise Exception("Missing 'commit <sha40> upstream.' line")
+    return upstream_shas
+
+
+def get_oldest_commit_time(repo, shas):
+    commit_times = [repo.resolve_refish(sha)[0].commit_time for sha in shas]
+    return sorted(commit_times)[0]
+
+
+def get_fixes_for(shas):
+    shas = set(shas)
+    prog = re.compile("Fixes: ([0-9a-f]{12,40})")
+    # Walk commits in the master branch.
+    master_commit, master_ref = repo.resolve_refish("master")
+    walker = repo.walk(master_ref.target)
+    oldest_commit_time = get_oldest_commit_time(repo, shas)
+    fixes = []
+    for commit in walker:
+        # It's not possible for a Fixes: to be committed before a fixed tag, so
+        # don't iterate all of git history.
+        if commit.commit_time < oldest_commit_time:
+            break
+        for line in reversed(commit.message.splitlines()):
+            result = prog.search(line)
+            if not result:
+                continue
+            fixes_sha = result.group(1)[:12]
+            if fixes_sha in shas and commit.id.hex[:12] not in shas:
+                fixes.append((commit.id.hex[:12], fixes_sha))
+    return fixes
+
+
+def report(fixes):
+    if len(fixes):
+        for fix, broke in fixes:
+            print("Please consider backporting %s as a fix for %s" % (fix, broke))
+        sys.exit(1)
+
+
+if __name__ == "__main__":
+    repo = pg.Repository(os.getcwd())
+    commits = get_local_commits(repo)
+    print("Checking %d local commits for additional Fixes: in master" % (len(commits)))
+    upstream_shas = get_upstream_shas(commits)
+    fixes = get_fixes_for(upstream_shas)
+    report(fixes)
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210316213136.1866983-1-ndesaulniers%40google.com.
