Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBUUC7SCAMGQETTIXVIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD00381409
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 01:01:39 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id f1-20020adf9f410000b029010e8048a0e3sf351079wrg.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:01:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621033299; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwQS3rlRzFbG+L+5HTVwsmU5GCwt5eiuTOpbG+Wrl+Im/cxcq5WjQ5IGxE1mFzVzrU
         f/yDbdWF15UwYlyiJakgI66BHO8FHwJTJFKu/lbyD3yQSDLKhQqXaf2mKUtQVXxHoB2E
         yw/sjES1eewwq2K86DdLa3VEmBH5GnEonRk6GYQJLxmQt6l4dIOUpJtvHVyNtTHh1+DN
         wmbs3x11yBpdM246moJzO39Apg6cfbg+NdVrVLo9Q7vxeIJ91h0MXlocnvUMAa3+RUN9
         TFLopJtHDhAbJuf7rHd/C3DMeoFbu4iFBPgU4XciRtXHYn35/IiNgf+TgeQrV9uD4Z/I
         WIMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BtPH3IsZxBVjvIAcLzgfmmtaexrGr86zfqK8G4QpYi0=;
        b=Ki21CCDmwjY4NNPfCKmD3+BLzTl1+pKzsYA80JwpkoTWdHqLeM89F6rHJs5NuUeakW
         iqej+yoVO+pbaHwRRtq83d38i+Y6CH38zU5TGRQ6CE2tSroD5VdJIGgiInr7tlsHB+An
         o+BMkQ5crxg7MZDCLMZnxTbSd6dy2Hg5SJYOMB2bOd0xWeSW4d+1vDHIIaT2v8m2wJzC
         DUjoG7Wz8zhh1GVgd6cRSxmGXpiL99spXyf8HSoQPyZsqJC1nRYPXvaXNZIFZf0M+m7s
         hGhOCSG32pgsgcRZHg/WBlznauUd+nahi/24w/z3CgQgWdYYmXOLsUEe4P1806984nNU
         IHgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ME8G7Ttr;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BtPH3IsZxBVjvIAcLzgfmmtaexrGr86zfqK8G4QpYi0=;
        b=tEVC85iJsNKJ7cZd9tHlW0GI8OX2NNgb7QftMe6gLnXLHrYYccN97M19welby8zERF
         JXw01QznNdhs+jEQyR+h8z7qWcLfXMRG8VOhFC09Dad67C+P1teq9AjAgfgFidkiCRHt
         vIdPhxF+2JR3fmGRrqzUWhYJMIY5HDZ8aFe0FPbLvD/3jCcomHXMB+/+IXla83IFHGB3
         u22Lwgcqf6gE0pLJUWIqwHZYSJFvzOvOzKjjW8hX2+RUTIHMdpdMb5JNqKfJe8Dlm3pK
         Hfayj1MbpSEJmXFTwt7krVhHDnhaIAJzI1Tl59RbJaImBWKpsPjrEerqR3AIhRsWrbBL
         4SNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BtPH3IsZxBVjvIAcLzgfmmtaexrGr86zfqK8G4QpYi0=;
        b=EouKpUC/2tLvl431M1qD77GZVMIT3cZxCsjL+YAq52hN4qxL/CSkAAeCqJLPdBPS4v
         ArrEvbYApePAJgMIWjNrSWkflWaTvQjEO7pXIhyovy0tkzrV1npmfcZIp8UIAIBm/adU
         BIUj4R7d6my44QwvldcvcQkCHY39Mee0hc7mwsQUc7CQ0TvAuqPL3U83koO4UdBvD4F7
         UE3kz4SG2Oj9Mc178swrldACAQTDeDDm0wAChHD5HFaF7dDyMbPm6UtPp/Rx/6NoIVnt
         0OsY5vXd6gG46jrO6B8Dj/Hmo6TDh5KcT1z5Jc/tCDPsiwZ4E6mtX//bRlCVmFzVUIOc
         vqyw==
X-Gm-Message-State: AOAM532/asv723jveT9aQ2Rpew78NUgUx4MJePoUVWS0tzaAe9WtxwYT
	9iuE/l8N+uEzvwg+EgPqnfI=
X-Google-Smtp-Source: ABdhPJxwdCD6/fLCT5/XAhVVjGmexNwK1l38uWGmihsA3lsIUauRGG9c4cQV0I+Xe5TcVKpPeKefUg==
X-Received: by 2002:a1c:f705:: with SMTP id v5mr11697700wmh.69.1621033299156;
        Fri, 14 May 2021 16:01:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db50:: with SMTP id f16ls1172087wrj.2.gmail; Fri, 14 May
 2021 16:01:38 -0700 (PDT)
X-Received: by 2002:a5d:43cc:: with SMTP id v12mr5399242wrr.215.1621033298206;
        Fri, 14 May 2021 16:01:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621033298; cv=none;
        d=google.com; s=arc-20160816;
        b=QebLQs+r3MjvAsYpoHSGSlZaj2zdmcFt3CGaItGvHHJUi1aGgJeWjc23UHFSrY4h1p
         R8b+SgmY8odUr/wJI8YgLseHIIVa6taU2q+ylCEmWpX9F9jtECQfIeAZcEuzY1/ZlU8o
         he/Zht3SV1OkyiVylpc9vrU13O0BWwz/UHKyUZ8OgCFxIX6Khw92fO8UAYrqyFuxnkK2
         g0igYgRgXSwagE5H9pxugqwz1Hx0/s1aU3XdmOWDSBpeqlTkl5LssB/x/3YArp9UxyTm
         YNicLkzL5I7OEQd14Qi3+asIxodl09NAONkGWUSKWQaATSrpTnYqR71pvFDMbNVOH/Q6
         /3TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DLT6T+7ahT3h2bp+/MpRlemcgEcaSpw+T8SFb1iKTRY=;
        b=eGrFgNXzl5PDyoNkU+0ESz1+V2gocddQgHpOu5K/tOy0+ESnpFZ/db13D4mrBOu8TB
         2H/m04P0WFLgOXbLruAYYbDWurOhc6owdm3dOeRaN2T06b6ka/3M0szU4uF9fGlitF6L
         19hxECWW06LiymSLEZT34cJAHtfbKKjjcIt/JLZmut0K0dJwSTE9A+uWFfu24VDExFvU
         /HOfxRF40OoAd/9dt8GaCSYrZlU4m7KWLc6vTVOAc9SPpVhhk3R6fvTyPoNEY8OiwxZf
         wC6mfeBtVMtUXz5vXGJo+Q3CKbdpTMfwZCJ02eKP9gNWtMRGTzYP4H4S1WTxvd1pxuz1
         GAXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ME8G7Ttr;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id e4si317830wrj.5.2021.05.14.16.01.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 16:01:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id r12so690725wrp.1
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 16:01:38 -0700 (PDT)
X-Received: by 2002:a5d:4886:: with SMTP id g6mr49446327wrq.225.1621033297714;
        Fri, 14 May 2021 16:01:37 -0700 (PDT)
Received: from elver.google.com ([2a00:79e0:15:13:9bfa:6490:ea29:a5dc])
        by smtp.gmail.com with ESMTPSA id h9sm6323784wmb.35.2021.05.14.16.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 16:01:36 -0700 (PDT)
Date: Sat, 15 May 2021 01:01:31 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <YJ8BS9fs5qrtQIzg@elver.google.com>
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
 <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
 <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ME8G7Ttr;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::433 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
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

On Fri, May 14, 2021 at 11:16PM +0200, Arnd Bergmann wrote:
> On Fri, May 14, 2021 at 10:18 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > On Fri, May 14, 2021 at 01:11:05PM -0700, Nathan Chancellor wrote:
> 
> > > You can see my response to Marco here:
> > >
> > > https://lore.kernel.org/r/ad7fa126-f371-5a24-1d80-27fe8f655b05@kernel.org/
> > >
> > > Maybe some improved wording might look like
> > >
> > > clang with CONFIG_LTO_CLANG points out that an initcall function should
> > > return an 'int' due to the changes made to the initcall macros in commit
> > > 3578ad11f3fb ("init: lto: fix PREL32 relocations"):
> >
> > OK, so the naive reading was correct, thank you!
> >
> > > ...
> > >
> > > Arnd, do you have any objections?
> >
> > In the meantime, here is what I have.  Please let me know of any needed
> > updates.
> >
> 
> Looks good to me, thanks for the improvements!

FWIW, this prompted me to see if I can convince the compiler to complain
in all configs. The below is what I came up with and will send once the
fix here has landed. Need to check a few other config+arch combinations
(allyesconfig with gcc on x86_64 is good).

Thanks,
-- Marco

------ >8 ------

From 96c1c4e9902e96485268909d5ea8f91b9595e187 Mon Sep 17 00:00:00 2001
From: Marco Elver <elver@google.com>
Date: Fri, 14 May 2021 21:08:50 +0200
Subject: [PATCH] init: verify that function is initcall_t at compile-time

In the spirit of making it hard to misuse an interface, add a
compile-time assertion in the CONFIG_HAVE_ARCH_PREL32_RELOCATIONS case
to verify the initcall function matches initcall_t, because the inline
asm bypasses any type-checking the compiler would otherwise do. This
will help developers catch incorrect API use in all configurations.

A recent example of this is:
https://lkml.kernel.org/r/20210514140015.2944744-1-arnd@kernel.org

Signed-off-by: Marco Elver <elver@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Joe Perches <joe@perches.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>
---
 include/linux/init.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/init.h b/include/linux/init.h
index 045ad1650ed1..d82b4b2e1d25 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -242,7 +242,8 @@ extern bool initcall_debug;
 	asm(".section	\"" __sec "\", \"a\"		\n"	\
 	    __stringify(__name) ":			\n"	\
 	    ".long	" __stringify(__stub) " - .	\n"	\
-	    ".previous					\n");
+	    ".previous					\n");	\
+	static_assert(__same_type(initcall_t, &fn));
 #else
 #define ____define_initcall(fn, __unused, __name, __sec)	\
 	static initcall_t __name __used 			\
-- 
2.31.1.751.gd2f1c929bd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJ8BS9fs5qrtQIzg%40elver.google.com.
