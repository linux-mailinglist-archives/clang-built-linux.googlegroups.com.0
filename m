Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLVF6SFAMGQEW4EZSAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 808BB423626
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Oct 2021 05:06:23 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id s8-20020a92cbc8000000b002582a281a7bsf959174ilq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 20:06:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633489582; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+GvDmNqIu7qZOqSyZ1dJlnEvqvaDLqBdLws0GQW09ftL9ljMXwH602TwoaeOsjRMY
         L+u6UonHsAdkoGoELv+1EMYbuQb7HMwdqxyCIp7IGthLnyAXDTT7EA9PctuijzabZZSS
         nyc+6NCsJY+goNin/lJ1ol3LdYgFdiUsN7i4cz+y7BB/e7XtMsvXvp0rAvRnL8eGX+HH
         tiDASFkQkzRbYPbrDEiV725Ns0h+0tA4CJISs/nQ/YhUwXi36duPq+GVTwrr+dO0bbxE
         lNAR43fPS9FHOO2gSpds1fnhGeT5XRbszpRfUMRcyZHZfE95HfVg4phjT8Gcz6QzGftp
         pLwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WOf9avwYFqQRK5yC8yb0jWC9AVCQCFwogCS4lPlKZ5A=;
        b=vW7AQp+D0mjjmcA2n/biTu/ygHSty2sXW4Fc4qR5s7Up3l05HHrYBGeR1R+6CB8exL
         efkNeRlt8WPHEQyaPFyK5TfBOE5Tt9I5dACqzm695C8upAkjtb+uLTOrvKGJnml6lsZ/
         TrWxmZVqCwIWiOYR7CFkfaMez9eiCnR60i4utCHxo5RBZ0VjUSkVtIDavcY6uq9vZzCk
         KQYuMzcZvk/MXBuyVowTbebDrjRTFQSHWSZS9YWzWMyQCXlCo0ySNbxDlz6XPe6na7vK
         ySHvytX6ENid0t8JObYxSITC98ZsVc7GqrEd8QkafjWxp5X2LI1htH9eRM2rVC/ajKQB
         CEUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RoIQ370O;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WOf9avwYFqQRK5yC8yb0jWC9AVCQCFwogCS4lPlKZ5A=;
        b=k+Qv0d97VUN3dER8ehqISAPgextZcKQV/hz1mwqNns0f80BpHlCRcob15I8S+2jTN0
         p/JFAKMZGNAI8+MUUomKtKtsaxe09kRu78+SjHt9b9SRBWDF2dQjdIbnT548ydBOKgVo
         hTSj/7ITzXKkBe7Z0qaXE4AHadN9Q3+DrS5CNd3KLAK+axmXgmLqBQ/6I3KFb4CNgbF2
         17iIs43G2Yzb4fan2m7laCFVnIYuZdCL8bju7/Fs+XCovVOeQSDtpggmJcgy6aQwv5IO
         8kv5CNB4CFD6PoK1oSpyWqo1fVmggI/QMjLFr7kFSoJBZEMvH1NI+l3uv9YVfNBrFSiM
         TGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WOf9avwYFqQRK5yC8yb0jWC9AVCQCFwogCS4lPlKZ5A=;
        b=aDSFdRT2gIm1onihUR+TKW+dfjnKleHF95QWC8pMHWG2O/egvtkiEvPNEjTEe1nw/Y
         zYp2ne4qt+1t6YKUysyltBmqb3Jhwsofvc6ZQ/PxZfvvp71d6hv9CBUavtADbttcop4H
         TxA9QrOXS+zsTL3Ub+vBFlJm0S6jEVrRBBG8hjgwuyoM5RK5kVSX/GSUDRCsnDLCJvUc
         Y19zBNPbYO0EkvA/7/5zW3ilWZTxegImH3VeqwfGyo7RTSY+PPfZKkgpSHRKRAQJrtdY
         KRUahDrGLkesA/ZTsM597EjzMhcZfrAKZE8iPOvIsq62qisk/RmlNv7b1n1rgg7dl5BX
         HjwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329mLS2uBZgf8e0EBfcPplVgRWPl+uUMBDtIE/GWdj2Axm6J4v7
	vlwVv8b9oDT4sfOy3YN/W5s=
X-Google-Smtp-Source: ABdhPJze5b3EQYfPfjqHJhwofex+VrZdPFEow6LSxyODkWcN1cMR1pIb8LzYr/Pvps5S0lUFWdW9Og==
X-Received: by 2002:a05:6e02:1a42:: with SMTP id u2mr5687051ilv.214.1633489582353;
        Tue, 05 Oct 2021 20:06:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c4e:: with SMTP id d14ls5652755ilg.10.gmail; Tue,
 05 Oct 2021 20:06:22 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a28:: with SMTP id g8mr5862597ile.22.1633489581979;
        Tue, 05 Oct 2021 20:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633489581; cv=none;
        d=google.com; s=arc-20160816;
        b=KmT0Qn85xjkvoovqY30PUjWxyhXse0GiPDJYcg1YSBXBhSiYgazK3hWdyVtM9Rvw5z
         axfBakujH2WV7vQBGJ8Xv5MrW/aGk/TKqSXy0ckAulv+7gH1H8iId/djEqd8NURI/6gR
         01Qd9Mq8aLkDBZJDcAsT2asKm4rMDY9nLLDQqDExs9Rupa+noOmeN87bc5rj+m8esGW2
         +GM3JWc+3GfWvx5+M/hcb7nKUm3r60W8Cfpw+P79Km18kXhMqptEwigSXFI7XTUpAWEA
         uJ7jJZvNWmYnDgmgnly5eHRzlJKARt98FEt1UMZhCMW0eQPW0NDJePChddVqCUhrRwiL
         TY5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h/B2/4lvsg/CGVwkkVTPAzFHikkG/kMza4mFfWJz56M=;
        b=M+lczm+YORiRPF40YUw0RNJjpGlD8M1liLf1WsTzc53G1FvQsJ7pOoEzAhe1hw7heL
         7tfI5AR86P/B2E/0rE5gbjMcz4zFNo764wgwOUctOMgVBnsLQHRoe5vNBVAqqrAnEUE7
         QB71SEe4ftLxMW0UzAcDbjOM7XuuoIFOvjqPEdkenAkP2mKnZ2E3XgXue0r/7V1VB5Vu
         /oI6pADxNhzhNkoqIsYAMbV2kG5Nz1EBtoUlHgH58UymWYarAdAxVubF/2IlmKJI/KDp
         0vHxxiOjaV+pahda1Zhxg+FinTA2zJp32IkeGc3l73egOSmp79K0cb9p8fp0RD4o7PqP
         TSmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RoIQ370O;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id e16si956389ilm.3.2021.10.05.20.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 20:06:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id na16-20020a17090b4c1000b0019f5bb661f9so1241192pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Oct 2021 20:06:21 -0700 (PDT)
X-Received: by 2002:a17:90a:6405:: with SMTP id g5mr7951706pjj.71.1633489581366;
        Tue, 05 Oct 2021 20:06:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y8sm19333896pfe.217.2021.10.05.20.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 20:06:21 -0700 (PDT)
Date: Tue, 5 Oct 2021 20:06:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Andy Whitcroft <apw@canonical.com>, Dennis Zhou <dennis@kernel.org>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>, Tejun Heo <tj@kernel.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 4/8] slab: Add __alloc_size attributes for better
 bounds checking
Message-ID: <202110052002.34E998B@keescook>
References: <20210930222704.2631604-1-keescook@chromium.org>
 <20210930222704.2631604-5-keescook@chromium.org>
 <20211005184717.65c6d8eb39350395e387b71f@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211005184717.65c6d8eb39350395e387b71f@linux-foundation.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RoIQ370O;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Oct 05, 2021 at 06:47:17PM -0700, Andrew Morton wrote:
> On Thu, 30 Sep 2021 15:27:00 -0700 Kees Cook <keescook@chromium.org> wrote:
> 
> > As already done in GrapheneOS, add the __alloc_size attribute for regular
> > kmalloc interfaces, to provide additional hinting for better bounds
> > checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > optimizations.
> 
> x86_64 allmodconfig:

What compiler and version?

> 
> In file included from ./arch/x86/include/asm/preempt.h:7,
>                  from ./include/linux/preempt.h:78,
>                  from ./include/linux/spinlock.h:55,
>                  from ./include/linux/mmzone.h:8,
>                  from ./include/linux/gfp.h:6,
>                  from ./include/linux/mm.h:10,
>                  from ./include/linux/mman.h:5,
>                  from lib/test_kasan_module.c:10:
> In function 'check_copy_size',
>     inlined from 'copy_user_test' at ./include/linux/uaccess.h:191:6:
> ./include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
>   213 |    __bad_copy_to();
>       |    ^~~~~~~~~~~~~~~
> In function 'check_copy_size',
>     inlined from 'copy_user_test' at ./include/linux/uaccess.h:199:6:
> ./include/linux/thread_info.h:211:4: error: call to '__bad_copy_from' declared with attribute error: copy source size is too small
>   211 |    __bad_copy_from();
>       |    ^~~~~~~~~~~~~~~~~
> make[1]: *** [lib/test_kasan_module.o] Error 1
> make: *** [lib] Error 2

Hah, yes, it caught an intentionally bad copy. This may bypass the
check, as I've had to do in LKDTM before. I will test...

diff --git a/lib/test_kasan_module.c b/lib/test_kasan_module.c
index 7ebf433edef3..9fb2fb2937da 100644
--- a/lib/test_kasan_module.c
+++ b/lib/test_kasan_module.c
@@ -19,7 +19,12 @@ static noinline void __init copy_user_test(void)
 {
 	char *kmem;
 	char __user *usermem;
-	size_t size = 128 - KASAN_GRANULE_SIZE;
+	/*
+	 * This is marked volatile to avoid __alloc_size()
+	 * noticing the intentionally out-of-bounds copys
+	 * being done on the allocation.
+	 */
+	volatile size_t size = 128 - KASAN_GRANULE_SIZE;
 	int __maybe_unused unused;
 
 	kmem = kmalloc(size, GFP_KERNEL);

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202110052002.34E998B%40keescook.
