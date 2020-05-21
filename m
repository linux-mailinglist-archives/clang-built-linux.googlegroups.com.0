Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBMM5TL3AKGQETIU6WGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022A1DCF85
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:42 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id d7sf5448880ybp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070961; cv=pass;
        d=google.com; s=arc-20160816;
        b=l7t2rdh1Y90R1sNW7QpmMUO5RS0EyFeHr6k66XJLzF1T1vqpx1F8pAPBkRIIBaIuPb
         gNvxHttRqyyllcC+WSSH7IXEOUNYVaktTCH96XC6hehlHR9BSg6A9sXXNG4qkmjlB8q8
         C8K9cujWyaSYYCyz/RLnofS2Cl5dB57POADmyOyQWO+nZV1OzqSny0ZIBK5LBImCR+Br
         6cKP/ctxRzlg76DKw0QRWjJMehOSS6MUqCsc9CJSIUFveFE2RNXH8Q94KmfjVUACrSmB
         bHYHzMvWKTNolTxO1PPUA2plccmma9YME1zxvCAwEWCrw0rP1MP7cqDIhpydjxb4i4qD
         lakg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6D8dqJb8yFNeuDwfQs56eZsDsjP55BovjtmSF9V/ws0=;
        b=MELMQqGHc2wQZkiWkT4jEL2adH/KWQz+MwanuNdFd6wSkQRXglEBDFEUbppanhzbpt
         mG1pg0+2+CnRhbTUuvHz0r7GDi3lP00mB1nHAxN5S5q9INgX5+uXKHmzQjST/o/isVeL
         ihRyPbUGqGQoV0v6w/NIxZBcpDbVjee6z8RWz8b9YNgo/c5asFGG1jajonq/R1qCtp35
         bQKdU4kj0b+y9y0GYKVsfp2b2iDdzKIHFJnfa5mrIccLabhnhfgIjNg2rK1gqFXWUKiO
         3HuzeUCOPQ0ynH2luDULKPDRUgmIGmeSwvaiJ3ezNKbaUjRqZk5Qlom5pOZlDRRgrrDn
         nVyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=joJLl5J1;
       spf=pass (google.com: domain of 3si7gxgukeemjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3sI7GXgUKEeMJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6D8dqJb8yFNeuDwfQs56eZsDsjP55BovjtmSF9V/ws0=;
        b=BaBtxRnxtjczRgjQGQGk+VvaA3RpuktH2ng/zjAzYGM73myCUrL/rmsRfAg1YjPN+5
         YQCzXKenNkFQXJgAs4agBvsHR4aDSBirWaljblTsGkAAqUulQQawGETkocq+Q2L1fy+Q
         PP3Jy9tOKuk7UpZDxeQjE+Zzn2Qd3RKJVzh3cDEfkEQgmxNyAyvMnoC6uRW9kVMtJJC4
         bXHBYbtasVPQQZbfL9MKdyB34DmGL1MprLWJy7fU/CLpnTJmgUezWuDL4SO0MtI9uXi/
         bgLbWeuKLc3QMRx86jAGPl76SvIDJb4VhyALBZ1FQGJfo3vJPZHB5U6Qn1wo2HSnlzuT
         ozfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6D8dqJb8yFNeuDwfQs56eZsDsjP55BovjtmSF9V/ws0=;
        b=TEDkB4BZJCUR0iz+fpHQbic4xfGW3z+OPAK70DEZvzFhJU3zL3zM3eWNhAazycVzu7
         cZpn1BK7uPUw1xDQE7HXMiT0NdiftAwRxQzt6t3QImRL7nEolQH4afsn37QncF/9h6FX
         zXWlNgEauu+3xVbLfI51I6vUmH3WLKguj8DSkffc8VrUmLgJudJS1hWyQHSFk88bXKRA
         4FD5KR/PjpSf7+NDnN4QUeixIfqgnuTY0/XBGUfJXAGIdxPyFgXNt8qUB9jxGnMpVRw0
         NFCnkrh6aRFgteHtkdWHDMzEI4Stsi5M4bdcqOx4ymfaL2RPwcBbSy1SsNkHI0JlLpbE
         nc/w==
X-Gm-Message-State: AOAM532IsptCJ0SA2ZIW2qwMiZsrWbBsdLHhNixECHxrf195WaSx6iMu
	DD17C1F8jzNDUtTqe1MiHnY=
X-Google-Smtp-Source: ABdhPJxuA1eNqBGxRY0NaPlj2KMcng9dR9XGc4m4xCTQ54/dSHM5IjVI3ilgaQEC1lPf3Tlguz+OXA==
X-Received: by 2002:a25:c287:: with SMTP id s129mr15754268ybf.337.1590070961525;
        Thu, 21 May 2020 07:22:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:678b:: with SMTP id b133ls800527ybc.5.gmail; Thu, 21 May
 2020 07:22:41 -0700 (PDT)
X-Received: by 2002:a25:ab4b:: with SMTP id u69mr17342707ybi.457.1590070961161;
        Thu, 21 May 2020 07:22:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070961; cv=none;
        d=google.com; s=arc-20160816;
        b=TlL6/0bAA0+SnCHJB5WCikBIZkeu3mjnVR37C88Ee5yonnq7tvpmatl9RRLTwiz1s9
         Gmc+bjPOUJ1kb29Bw6LGcHyDNw08y9YYrrDiXbFE6m/MsPCmSzc68vcrt4nqGJZTZxwZ
         9aqbqfJY0yj28sFqI/xEx0PoirREdd1AmeO/jM5oHUkWB1gbK7IC10zV8F9Gt8PRaZhS
         W0YhNh0zOzGHVUURj/91eonyd81BX/IIoCnCbbtzU6x5aPYchcHJnSzCkcketuNQrtOl
         gi8EkTgpo/xPQmqEv4Lpgq8wiFmcDjLjKZ8ETwRnU3DggKutPbBTLtnl7SblIgnx4CFX
         uhhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2MIiys78gGheOmgr5sadClIeI2A+sMpKPCOuDS/ESKE=;
        b=Vq9qA9u7c2JNCAVRXjL5esmeNBJ/wcUm4oc0iZDNAhqZNGJnhuyhIYDoHUL+dJjA87
         RrN7XvorPNOzxe3EZlaAbitqLhHyLEs8ezNVWC6jO31L2wMf4+ZicpluEjpESErtHYe1
         JJphIpY5ShUsmIH34Bnq4u13H/e20O0HNL5Ezw1wHIQzonIEh/aS+1hXBKUkc3gjoONp
         rCN3rSQXt3kEHY4iVUD+hEwXJFDD+RZU1e3g8NQFR4AjoxFqJcn9YUJrxLFOF8FkHOCH
         vmhcD7qI65G6OFR0TP4XiCnfFeRdehrYEM+x+tmxatxrSgjxy0n7J4JHmm69h1YFcVqu
         mVOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=joJLl5J1;
       spf=pass (google.com: domain of 3si7gxgukeemjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3sI7GXgUKEeMJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m9si377917ybc.3.2020.05.21.07.22.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3si7gxgukeemjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r18so5450378ybg.10
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:41 -0700 (PDT)
X-Received: by 2002:a25:3608:: with SMTP id d8mr16539361yba.11.1590070960816;
 Thu, 21 May 2020 07:22:40 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:45 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-10-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=joJLl5J1;       spf=pass
 (google.com: domain of 3si7gxgukeemjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3sI7GXgUKEeMJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

It appears that compilers have trouble with nested statement
expressions. Therefore remove one level of statement expression nesting
from the data_race() macro. This will help us avoid potential problems
in future as its usage increases.

Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
v3:
* Fix for 'const' non-scalar expressions.
v2:
* Add patch to series in response to above linked discussion.
---
 include/linux/compiler.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 7444f026eead..379a5077e9c6 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -211,12 +211,12 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
  */
 #define data_race(expr)							\
 ({									\
-	__kcsan_disable_current();					\
-	({								\
-		__unqual_scalar_typeof(({ expr; })) __v = ({ expr; });	\
-		__kcsan_enable_current();				\
-		__v;							\
+	__unqual_scalar_typeof(({ expr; })) __v = ({			\
+		__kcsan_disable_current();				\
+		expr;							\
 	});								\
+	__kcsan_enable_current();					\
+	__v;								\
 })
 
 /*
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-10-elver%40google.com.
