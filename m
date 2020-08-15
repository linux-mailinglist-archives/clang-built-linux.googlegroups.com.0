Return-Path: <clang-built-linux+bncBDY3NC743AGBB5FE4H4QKGQECUW64NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F242451DE
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 23:24:06 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id x20sf7506829plm.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 14:24:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597526644; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5E24tyL5SQqUVBa+1vG7P7jOS0stcW/XLbya4c9em3wn2GKNdV0rlI5NAxxUUoFuq
         yzg5shh+OE+e+EzUC2L9qnrmnZqZ/C3aq0aI6t8VKTe9r1AhASy/ga/Xitqf0Q84cOoK
         gw44zIH5UfEIZ9BOuEU9lEXhobSPCq9rUt75iBnyNl1cVSf3H6FzH7Xs+8Luod2ZcNvY
         zKt5eUmNs05wYVC2XNzoEKeQxp+v6Zvb9A42SnQyHM60Boec2ohZ8L5CFewWgJHSUAHR
         7nhw13r7euuM7ZSACdvyZH5sCRYntqHLV6CuOwjlrZRot6eOlVfjj67bHVJEEH6rR/wF
         7JpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=cpraiD8PtfhECnLuflblCXnIlVzwg70dbjFLAGnNVUY=;
        b=iLucLAgYyODbwhx9ji/PN3VlCUJDshmTRKkdo6TkQlef1R7TQ04BGGgB37J/kY5XGZ
         duYmAdzzyR0BzClPhBwW41G8zreE1yXGntiCYGnkwpF16i7INvwLZVfNORZad9jAQaGR
         7eGmCvDJ0vZUR8cXJxnq0vjfJ+LAhwy+DrbH2B2XdZHJoj3p3s5n7ktyx9S6ME81lQpQ
         5qFmA1LfwCVqmhecIYX0cZ5Dd+ourm2qLRPXQvMfzyKWWKqMC/hxK29SugOUhMcHHAzI
         kHLMeVE8TA7K8tN6xaUh4qwQ2xdegqce5JrUJF7xnv1HwOFRakWioTAWMBRrY4d7sHfB
         TIBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.248 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cpraiD8PtfhECnLuflblCXnIlVzwg70dbjFLAGnNVUY=;
        b=DrAWFFR2b2oyNuo4BPknBdSPQv3Fd5jDb/6pwkIgPgk7izUUzLhhJJwr9ABfYXuimL
         H9VJ9ivmNz7wm8yXBO57aRzLsrEALsLoy4JpeiqveZCJx9tTdo4zcPNFLaT8ispoPPbE
         SItbf69Kj4NEcmYFNwbKGYIEXs86w3C6gjI0aaq3X/820caDnKbjsRQ9nlH2rrorO+2A
         JQ7epM7Ja5pg7E2pFVzeBe0w8YZ4WYaGm0eyj5pud/e51bxyRDO33kWl3mOGDxg+QUxE
         RXosAXLPbiX0nxcuOjn181cBv7C36p6JkVLvR5cxJN6oI5GKMt5BBjmy/27lVtS8grn4
         gjAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cpraiD8PtfhECnLuflblCXnIlVzwg70dbjFLAGnNVUY=;
        b=BM1/D9fAtUTwKmJy6uBSWDdHKdXuy7Had+RXn5oPemJfi5F2LAcAqH5jSrDO/uv1fF
         /HNZf3f1RsiRS9PtYWNnL0Ci1Q7Tyqsi/xOm65Wnwz1TLECyFB5mx6FlE46cMBU5veCl
         vNvhBe9PmBKpAfDuLANVEm+RJjDVEUC6m0+7pxYHsO4OKfnFuX0U47j0Eqr9GDZAovap
         1fHEWYX75uFqhpR/Mz+7FtrywoBo27AJtGarkfvlasktbPisCrWC40J/+yCHyG5fjH3o
         SwogTcQDVzv6CQjieluLVxBZqO5sMhEQqUAYABphl9JStrGiQvTn8tqZ9Rl5jPSVmFZR
         RNMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DmwYE4zUKFpL9QT1pwBda0NWmYSPtmtEJGAz1H8Zo5760cmB0
	V48gn/PBYSfCPccS6yTeVdw=
X-Google-Smtp-Source: ABdhPJyq9Djn9VE+frp8DH3+X4nfBGLr7sKi4w+4RkTHjhsANQMMkqQ5nIrP6sXP86dZRd/VetaUtQ==
X-Received: by 2002:a17:902:b48a:: with SMTP id y10mr6080326plr.97.1597526644514;
        Sat, 15 Aug 2020 14:24:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:524e:: with SMTP id g75ls4268374pfb.10.gmail; Sat, 15
 Aug 2020 14:24:04 -0700 (PDT)
X-Received: by 2002:a62:4e96:: with SMTP id c144mr6422260pfb.27.1597526643993;
        Sat, 15 Aug 2020 14:24:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597526643; cv=none;
        d=google.com; s=arc-20160816;
        b=SC8hQ+iH1RbLEyEi+TYaG7qWHJwy+lUd/IG8rZJgwwhmOwGwmglhpXXwMbd9YRLqEi
         OsuMHw6DtmZtr0G6B8RAA8J0pItOlIXa++1mSpHJF50ivpNCtXRRu9bIp7GlxLEBXeGY
         rB0yuYDfyycKujtli2z9/ICEqXmIN0wTBZ7R+yao5R9E/lT+1G26Tyo5uDZ3Kn/DzGA+
         qhwS/ds2XMKonxG842Xczbkj54BACK7G82qYxLZsqPYmuU/cjNmJtQXODpxCktmkF8CV
         F93bTHaLtXjS01ZQnptfbKxOghTavn8WL02KW52kb7Mv6ybScdIKbQ9jacP+lyot4fxF
         0kmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=88NP3sNFj5N7N/NYHZuQgWnrlykPKnQYl5OdeQcIysY=;
        b=Kd6ES1qv6K+yXOJX9hTH5VexKO9WcmLYq2XuMUfuXzeliauFIivjMFu74HJ3kp3dwQ
         2DmkCPAyKmujjVhPtSaLs9W7CRWfW/MhFqBQdpLXdJy4Bm38PMNYpcYO4ry09gk3sdBn
         /N3/aEfH2fjFkq0VIM9uciU3p2C4yonEE+d7PfMFruKQmmvNTZXZmWXprpMswPOiNTp2
         4Ck9nCItZYwnNzVnVdBQai1Qwom71TNLAiq2qPXA0P5e9tltaDxtatQG5A3YoYzuji6U
         sLIx7ecZXNPG1FMWhI0zXxUvc/eQXd9RRKS5vW7zhdjwFP3kkdkTw5OSZWi7Bt7p+ztH
         sxoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.248 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0248.hostedemail.com. [216.40.44.248])
        by gmr-mx.google.com with ESMTPS id jx18si653361pjb.1.2020.08.15.14.24.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 14:24:03 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.248 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.248;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id BFB961800F594;
	Sat, 15 Aug 2020 21:24:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:368:369:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1543:1593:1594:1605:1711:1730:1747:1777:1792:1981:2194:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:4605:5007:6117:6119:6691:6742:7875:7903:8660:10004:10400:10848:11026:11232:11473:11658:11914:12043:12291:12296:12297:12555:12663:12740:12760:12895:13148:13230:13439:14181:14659:14721:21080:21433:21451:21524:21627:21939:21990:30054:30070:30079:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: wish32_1e17df327008
X-Filterd-Recvd-Size: 5107
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Sat, 15 Aug 2020 21:23:59 +0000 (UTC)
Message-ID: <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
	 <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
 =?ISO-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>, Eli
 Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, Arvind
 Sankar <nivedita@alum.mit.edu>, Sami Tolvanen <samitolvanen@google.com>,
 Vishal Verma <vishal.l.verma@intel.com>, Dan Williams
 <dan.j.williams@intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, "Joel Fernandes (Google)"
 <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar
 <mingo@kernel.org>, Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,  Rasmus Villemoes
 <linux@rasmusvillemoes.dk>
Date: Sat, 15 Aug 2020 14:23:58 -0700
In-Reply-To: <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
	 <20200815020946.1538085-1-ndesaulniers@google.com>
	 <202008150921.B70721A359@keescook>
	 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.248 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
> On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
> > On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> > > LLVM implemented a recent "libcall optimization" that lowers calls to
> > > `sprintf(dest, "%s", str)` where the return value is used to
> > > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> > > in parsing format strings.  Calling `sprintf` with overlapping arguments
> > > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> > > 
> > > `stpcpy` is just like `strcpy` except it returns the pointer to the new
> > > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> > > one statement.
> > 
> > O_O What?
> > 
> > No; this is a _terrible_ API: there is no bounds checking, there are no
> > buffer sizes. Anything using the example sprintf() pattern is _already_
> > wrong and must be removed from the kernel. (Yes, I realize that the
> > kernel is *filled* with this bad assumption that "I'll never write more
> > than PAGE_SIZE bytes to this buffer", but that's both theoretically
> > wrong ("640k is enough for anybody") and has been known to be wrong in
> > practice too (e.g. when suddenly your writing routine is reachable by
> > splice(2) and you may not have a PAGE_SIZE buffer).
> > 
> > But we cannot _add_ another dangerous string API. We're already in a
> > terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
> > needs to be addressed up by removing the unbounded sprintf() uses. (And
> > to do so without introducing bugs related to using snprintf() when
> > scnprintf() is expected[4].)
> 
> Well, everything (-next, mainline, stable) is broken right now (with
> ToT Clang) without providing this symbol.  I'm not going to go clean
> the entire kernel's use of sprintf to get our CI back to being green.

Maybe this should get place in compiler-clang.h so it isn't
generic and public.

Something like:

---
 include/linux/compiler-clang.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index cee0c728d39a..6279f1904e39 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -61,3 +61,30 @@
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
 #endif
+
+#ifndef __HAVE_ARCH_STPCPY
+/**
+ * stpcpy - copy a string from src to dest returning a pointer to the new end
+ *          of dest, including src's NULL terminator. May overrun dest.
+ * @dest: pointer to buffer being copied into.
+ *        Must be large enough to receive copy.
+ * @src: pointer to the beginning of string being copied from.
+ *       Must not overlap dest.
+ *
+ * This function exists _only_ to support clang's possible conversion of
+ * sprintf calls to stpcpy.
+ *
+ * stpcpy differs from strcpy in two key ways:
+ * 1. inputs must not overlap.
+ * 2. return value is dest's NUL termination character after copy.
+ *    (for strcpy, the return value is a pointer to src)
+ */
+
+static inline char *stpcpy(char __restrict *dest, const char __restrict *src)
+{
+	while ((*dest++ = *src++) != '\0') {
+		;	/* nothing */
+	}
+       return --dest;
+}
+#endif


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/457a91183581509abfa00575d0392be543acbe07.camel%40perches.com.
