Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXM6PZQKGQEO4DEIUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 8342619469F
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 19:37:16 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id 2sf4914001plb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 11:37:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585247835; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmlmuDhifglBpM1vjWfJiaAt700f582u6cRcN7YUrruoEYbhQu8pYD2sfYH01Xg1pg
         d1piHmuJcFcHVhN3Gr3oUrVuoIt88Cy56yC7pS/nNx0mD94WGwdcdXoSVmqpHByAyjIg
         YGsKBMD0V/smAEokjFd4m+ZezJYHgJcwAMFt6l5z+ZEIc/WnteUWVeZhb9oUysHJDqCq
         t4y3th+jSkmprHwC16MONcwIdEX+ooXfc7jU89Cz+VpdR7Y0kieag8S8zxKNPJKTqt5S
         1SQVwVLDZ4+PsqLZVbmsGaz/lFG3yDNOoYSut+tw39433n8QXo2h2hI5dIUuERF+PvUn
         vMSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ExzFshH6rZM+Y81fxUotXkr+GIMRXj+N9hIswuIS4f4=;
        b=jjfSSNaXRduoBtrD/esNNtwl9zWkkxqqaf32Nq+d2RyFrv6ZkgzM7nsD0VFJP3RKQG
         SN3lMaqcgHy6XNaQ95d+2dfkuKwBg/fitZNZ+qCLEw+ijZJ0dy0pP1IGtQ2MKJUdWoPf
         Q0wWqreL44pSwH2A6NAEqJuEMAJqiRJZfXHOI3raxouxZ3FIG29Povwp+mNfoqFCINj9
         4w5JEbs8e+wo7c5ObCfWNhZkNU2kodcMScrD05+7itpcUo9UB8U6cP2NDkPYwqW/c7ws
         eIc1LI4/U7Vbovy+JYbmodRficHTzdrW09cS1O2YuBgu4rS1yTm6/VTuWseqgwRQh24f
         5iTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mz03cmNX;
       spf=pass (google.com: domain of 3wvz8xgwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3WvZ8XgwKADUeUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ExzFshH6rZM+Y81fxUotXkr+GIMRXj+N9hIswuIS4f4=;
        b=oH6kzePpgI2oioVduw534PgLUVpxn/goHnD3vJQLyR4nASKMdrBcto0IK0WfhA1pVY
         Lto095v25v/KNE4d1UobqR9t/QJ7QYuGhz2RmornzPaVTpOOXqRZiEvR9SkaEk1O7MaG
         tBNcByrokrRHLvhhwTQDREx7OCFtcaOSYtoXtI/bBtqqviAwqMtrm4qWP1hjStUWGhHB
         GIaq6XfXbDst6RTrZpErSayK5YvuF7eBR1HGJ2wIrjnsHhAY9cB07lnwLHH4l6g1edgD
         51sNq9oQVqAhGVJGS1TPejm6hvuU7qeemNiTOmA+RV2arYrjLMOcwEgS0LPZKQkgLLzt
         G1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ExzFshH6rZM+Y81fxUotXkr+GIMRXj+N9hIswuIS4f4=;
        b=l0YRNPKlKIyruznQQdA5stWKpmlYYzb9pYINNKQ8S2HkaikIw/boTSmPbMbPYdElEv
         Fzx0SK3i5y6qHlBD9qoF+Nj1356Cqvs0xZRvHTK4Q63xgqApJIfg4hnO9Pd3p9kD4m/m
         cFM2I1Gu4KMXBp15ldEZv+TlpiswX5VhqTbnjpN5K7AUt7MKHRohtXYV3uGqh3vmC0zO
         D8Of/WLzhlXYxFaNiBfGZ6Hqb2emQSQrczpDp+rmawqcQ5OrVkGHs8DzdENrikp8LDaB
         AeArkdkIGr3DMqp1TzGkOYyNVeREVTDgjdkG8Kvm6O1OFZACkgZtVAeBIYWApYEfYGep
         WiAw==
X-Gm-Message-State: ANhLgQ23fuWWmWYxXWWHfAlHgD6KsNauVpz2cchdDn7X0wxl8pe+3nht
	LSi7crlmvVNIb6iUrPuJg2I=
X-Google-Smtp-Source: ADFU+vs6iianIKz7e38KV1TnomL9FbzAlqcKcE1nzZVdpT7xpPEqLuOvAHV2HxLKNANbz5J1oLP1XQ==
X-Received: by 2002:a17:902:c194:: with SMTP id d20mr9641578pld.10.1585247834914;
        Thu, 26 Mar 2020 11:37:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls3982884pfw.1.gmail; Thu, 26
 Mar 2020 11:37:14 -0700 (PDT)
X-Received: by 2002:aa7:9250:: with SMTP id 16mr10123718pfp.205.1585247834418;
        Thu, 26 Mar 2020 11:37:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585247834; cv=none;
        d=google.com; s=arc-20160816;
        b=hb5XbmW14WZ1cATrOh8MZ9kXTqXFgvU1Q6vOn/m9D+NuSUIj0YFsr1GBFwnmEW9UwO
         CNQHcG/+iHaRwh99Tx5iehF69SfsQeslWS4s6hac5cwUGe2XutXOQEDBrFmXaBywUjw/
         jXiREoXRos4AIsdlL7e0dXqudWYRCFfNkaStcVq8BzuJkeOwMBEBESNvecxFVcTDkcgF
         4/ME7QxZhNqy//nkiB4YGil6nCwQ1bMwXbrn3breIVpdcTQqR75ku1f29IJvaPbDbgN5
         LiluVh0gI3Rk44mzkpwdDkjmRh+peoF8011qkQC9/YyPzx6KfCT3r7eZLWie5xSwZvv3
         InHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=1VavJ5Z7gke3ZjScCRX+571R0N4qJ3UtZHz2ejGsmPM=;
        b=daEPFbPrg1eJayHvHW/7KZzW6EOTu6g6XkdLv9rXrB1XruO7i9F5vHiLs9w9dC/Hwc
         81HCN8fCeLk3qZVuYI+KsqzowQLAojIov+N149l7ve71VY5mqwKNwlKgf/rv37P0KmR3
         qG+IcW7BdQngxEX7RRD/VE1En/hHIF+IEs1rrgCc8oGjg06Yb56hJBZ1NG9YxsZYXVMm
         gyUQtxFkELBBAM7d1JZ9Tg64AA9U9stC1I0SQ3EByagH5M1YxeOZY/VvBuLO9WegMMD/
         yM8NtyqFx1H7YcxJWeAmeC/KMTElw7sc5Q3t1iLMUWEcpIsZcJ/1jYEQI/3dbEDrTdVy
         OUKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mz03cmNX;
       spf=pass (google.com: domain of 3wvz8xgwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3WvZ8XgwKADUeUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id c125si228698pga.5.2020.03.26.11.37.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 11:37:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wvz8xgwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id t12so4947584plo.4
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 11:37:14 -0700 (PDT)
X-Received: by 2002:a17:90b:1a8b:: with SMTP id ng11mr1469403pjb.109.1585247834008;
 Thu, 26 Mar 2020 11:37:14 -0700 (PDT)
Date: Thu, 26 Mar 2020 11:37:06 -0700
In-Reply-To: <20200326134701.GA118458@rlwimi.vmware.com>
Message-Id: <20200326183707.238474-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200326134701.GA118458@rlwimi.vmware.com>
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH v2] objtool: Documentation: document UACCESS warnings
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jpoimboe@redhat.com, peterz@infradead.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>, 
	Matt Helsley <mhelsley@vmware.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	Petr Mladek <pmladek@suse.com>, Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mz03cmNX;       spf=pass
 (google.com: domain of 3wvz8xgwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3WvZ8XgwKADUeUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
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

Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
  call to memset() with UACCESS enabled

Document how to fix these for future travelers.

Link: https://github.com/ClangBuiltLinux/linux/issues/876
Suggested-by: Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>
Suggested-by: Matt Helsley <mhelsley@vmware.com>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Suggested-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* fix typo of listing uaccess_enable() twice rather than
  uaccess_disable() as per Matt and Kamalesh.
* fix type of "should called" to "should be called" as per Randy.
* Mention non-obvious compiler instrumentation ie. -pg/mcount
  -mfentry/fentry via tracing as per Peter.
* Add sentence "It also helps verify..."
* Add potential fix "1) remove explicit..."


 .../Documentation/stack-validation.txt        | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/tools/objtool/Documentation/stack-validation.txt b/tools/objtool/Documentation/stack-validation.txt
index de094670050b..faa47c3aafae 100644
--- a/tools/objtool/Documentation/stack-validation.txt
+++ b/tools/objtool/Documentation/stack-validation.txt
@@ -289,6 +289,32 @@ they mean, and suggestions for how to fix them.
       might be corrupt due to a gcc bug.  For more details, see:
       https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
 
+9. file.o: warning: objtool: funcA() call to funcB() with UACCESS enabled
+
+   This means that an unexpected call to a non-whitelisted function exists
+   outside of arch-specific guards.
+   X86: SMAP (stac/clac): __uaccess_begin()/__uaccess_end()
+   ARM: PAN: uaccess_enable()/uaccess_disable()
+
+   These functions should be called to denote a minimal critical section around
+   access to __user variables. See also: https://lwn.net/Articles/517475/
+
+   The intention of the warning is to prevent calls to funcB() from eventually
+   calling schedule(), potentially leaking the AC flags state, and not
+   restoring them correctly.
+
+   It also helps verify that there are no unexpected calls to funcB() which may
+   access user space pages with protections against doing so disabled.
+
+   To fix, either:
+   1) remove explicit calls to funcB() from funcA().
+   2) add the correct guards before and after calls to low level functions like
+      __get_user_size()/__put_user_size().
+   3) add funcB to uaccess_safe_builtin whitelist in tools/objtool/check.c, if
+      funcB obviously does not call schedule(), and is marked notrace (since
+      function tracing inserts additional calls, which is not obvious from the
+      sources).
+
 
 If the error doesn't seem to make sense, it could be a bug in objtool.
 Feel free to ask the objtool maintainer for help.
-- 
2.26.0.rc2.310.g2932bb562d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326183707.238474-1-ndesaulniers%40google.com.
