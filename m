Return-Path: <clang-built-linux+bncBDYJPJO25UGBBROC4TZQKGQEW72VWVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C65618FFDA
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:51:19 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id q15sf7689169pgb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:51:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584996678; cv=pass;
        d=google.com; s=arc-20160816;
        b=mZSD5IYOQdNDnVAeTYZ6Uj/KRb0R3b6dp3Ij5kcQ35c4cnCgtA+bw3pDxnyGG5SvhV
         dorVUWLbuTHIRVNv81goO/B4+Bl8fzviWP+XMmodqJdOVaOPo95HCZGRSZDp3m/hkxXG
         gzvs85GOsTmIstCWT8u2J7Jhvin8RsJoB36+HE/JPcmMdlXYT74QuG6zew1+BcmnZVI8
         XxjsvEKgckgpNUvVm5qGy1KX6U5Nr0BqCgEdCPDwMBA8TSCwq5eL69JFOEcdn0ZTWnkR
         pQxhqfTunLyMexo81SWd98KR8eXDAiPgJv+uZ2YrYmm2KmfFEgj9WB926ccXSaX4qAMO
         R3IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FjLRRQzKZVLjmV01iDwvyCmHk4MnTRl9bWXpywC1VfI=;
        b=n0X69xWKp8pWZgJgr7L3Jx7/0i8nOezQs+r2H3Adu5G55mPtVFpI5zR+ozwO2BBd47
         0dChyT7fqWMkyrjgKJmh0eNRedDvjVkiLGGI/ivinU7sJImqs8Amm5Bh1BeqYGZcJ4mF
         jCQH7A2PUtYz7qPAIOs06UEI/sMd5AXYbpTJ1QS4QOPnj3fVIGxAOr0gnyRhW0WyT12L
         BN5jtDojdj1Amne3mA+qGq9iURf70h3DsF/PJI5zzCAuj/XbFxU2BmiFfMErwxG6I/cj
         B3KCrvjTczIG1UIfmviyZgxYdC5U9ieqr6Zw5bcSN2dp17tF7x6gUJLaX5kZCO2rIiNk
         hjmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ahtsdj4E;
       spf=pass (google.com: domain of 3rcf5xgwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3RCF5XgwKAGUQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FjLRRQzKZVLjmV01iDwvyCmHk4MnTRl9bWXpywC1VfI=;
        b=i/NxIe0sbEtoX9kgBafuo/3B8WKTt5lqjKiJ4eumR/LPxWl+dgnrqe0SkJI1KYFYOZ
         XCVdcmD4rzRQxwMHAbte2O2nFYjydwFPBoIcfpBtbJzTJweT9jr0jyDm4CyHOstGtDbP
         CjMN63aXZGsmqfYHEL0NIwA8lQjbkQqdVVmg2hpMsOOHBzyD090EoI7PYqI9OmA/p4Jo
         qFz2UEODl/ZKKBG47acsuBDyGNEis5sG7RP7oSklda44Zd5S1SsI0jTaCpfF4ngp51I/
         LUEbyzkZ21TWZGeBayJu95UrN+KePkjyzn9m9UziIjI/ZPHMABzBDxNeuOpFcoGwz1uH
         DbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FjLRRQzKZVLjmV01iDwvyCmHk4MnTRl9bWXpywC1VfI=;
        b=tBIIo7xfnq7maCMXK6DJFfcM1gKCoUt81MgmU1HEIFxj37finrxhfnplbdNHCGLu2C
         bFFP5X5BnOLY6j37war5paVW+pYruV52pf4wY7I0UtToT4BqtBALNIQOevc8UVuUzdjO
         /0c9HyGfFU/OgJjdv2akalZGZfprXkHPhUYCp6cjs1sQxmwQo9uLAQpu8xPO5olbdYpj
         /7MI8PWlj7Ftdlt7uvDfyUeHhKd97pedC+9nlPZT3D3+eVFcWDIDs21I5s6/I5P/v8+G
         aayRIivaFGmy84b8xG1TVvuRfnhcW7jbVF2DOFUFc87x5FgDOYCN2qLlb8abnuiDrAC+
         Tmrg==
X-Gm-Message-State: ANhLgQ3fPTFqW5sAW5ZEqmw0x1mlzmF3P574N7Z5fG3D2m25gfR8PWY9
	FlfjRDhJAG+GCswiU/X1tUo=
X-Google-Smtp-Source: ADFU+vvQXE9+OdUymmTfkiewtKRRCBI3Mp+lyKPLqmLAxg68L/Hs9OeUF6zwn/Ko3IMTkFJLMdGQqA==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr25774035pfa.139.1584996677918;
        Mon, 23 Mar 2020 13:51:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c97:: with SMTP id x145ls8265627pfc.6.gmail; Mon, 23
 Mar 2020 13:51:17 -0700 (PDT)
X-Received: by 2002:a63:5f92:: with SMTP id t140mr24302813pgb.109.1584996677336;
        Mon, 23 Mar 2020 13:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584996677; cv=none;
        d=google.com; s=arc-20160816;
        b=KMHPdCCDuaiEDyPslQ+BpVMZCKOt2ZlzGQqT655RnWU9zqJ27xbr+ogf4j/RhHpvU8
         U1+4tRaHvxwX7ALYESLKVCL6U7NQJJKPPcvTOlTqXubK1tPCRR6WRWVQbJkyYjcDZh+t
         ZGWQgpn13nc8ZH8OQzYwDFc5ZkLyFZQgW2H/6gCn0OB4o7OFigxOWEG4HaS67XKqrH64
         ZZAoGSPFJSPk7+s+14cgYLDMa6JXdjn5Y6q12OMrX1MTRfePFxvo55iP7sVrqGuoo46n
         wY7NwRPaEJoVPx7D5plIxPy2giRsq5hvaVrKlscOSJp7qaBxQuYxvSM0letfMx8wFrCC
         8mAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+b00bb+PEHuwwbrBh+jXdgzDNV1aGS9nDxW/xv3omWY=;
        b=lIigD4vWv3me7AhPT1Qf7jpL+MEm3NayhRfIIbYvxNHbELIUMvU5hp3yAA//6T9R1X
         XwjbhruuEaiFFWewaLZRvVBiUv/PnXvi+/UrilWUND31FJAJAh4FSPRgmR+CaPplEHQp
         vRJU1k1AoE8wN7EJAeNCHBtnkojnWu5xxyfOW9fS1DKAc6pCQJcoQAqRdxdonneBUjED
         YUKyrR4AFhNJO4Qpr8ZjyeqaPjHwnNS+ygyZkMQgGCiOs97IYAeKMRowiPz/63PuYzbC
         jShDx9On1KcFoW5AW4BqL5z6NGd5NfFatA+2ZxZfJNQftIQ+Vg+xPDTJTevKOWq0mfXm
         dudA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ahtsdj4E;
       spf=pass (google.com: domain of 3rcf5xgwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3RCF5XgwKAGUQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id s20si992148plq.5.2020.03.23.13.51.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rcf5xgwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id z29so4957441pgc.23
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:51:17 -0700 (PDT)
X-Received: by 2002:a17:90b:1954:: with SMTP id nk20mr1318401pjb.69.1584996676897;
 Mon, 23 Mar 2020 13:51:16 -0700 (PDT)
Date: Mon, 23 Mar 2020 13:50:59 -0700
In-Reply-To: <20200316160259.GN26126@zn.tnic>
Message-Id: <20200323205059.59037-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200316160259.GN26126@zn.tnic>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: Re: [PATCH] Documentation/changes: Raise minimum supported binutilsa
 version to 2.23
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bp@alien8.de
Cc: Thomas.Lendacky@amd.com, hpa@zytor.com, issor.oruam@gmail.com, 
	keescook@chromium.org, linux-kernel@vger.kernel.org, matz@suse.de, 
	mingo@redhat.com, nivedita@alum.mit.edu, tglx@linutronix.de, x86@kernel.org, 
	x@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ahtsdj4E;       spf=pass
 (google.com: domain of 3rcf5xgwkaguqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3RCF5XgwKAGUQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
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

> The currently minimum-supported binutils version 2.21 has the problem of
> promoting symbols which are defined outside of a section into absolute.
> According to Arvind:
> 
>   binutils-2.21 and -2.22. An x86-64 defconfig will fail with
>           Invalid absolute R_X86_64_32S relocation: _etext
>   and after fixing that one, with
>           Invalid absolute R_X86_64_32S relocation: __end_of_kernel_reserve
> 
> Those two versions of binutils have a bug when it comes to handling
> symbols defined outside of a section and binutils 2.23 has the proper
> fix, see: https://sourceware.org/legacy-ml/binutils/2012-06/msg00155.html
> 
> Therefore, up to the fixed version directly, skipping the broken ones.
> 
> Currently shipping distros already have the fixed binutils version so
> there should be no breakage resulting from this.
> 
> For more details about the whole thing, see the thread in Link.
> 
> Signed-off-by: Borislav Petkov <bp@suse.de>
> Link: https://lkml.kernel.org/r/20200110202349.1881840-1-nivedita@alum.mit.edu

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323205059.59037-1-ndesaulniers%40google.com.
