Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH6TZCDAMGQEAHPLUWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FE03B0CB6
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 20:19:12 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id u7-20020a6345470000b02902211e79e4c1sf14341089pgk.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624385951; cv=pass;
        d=google.com; s=arc-20160816;
        b=R36HW5ztSCgGKlOWM2q1z1BsHZbOsc4u5t1LO7vH5bUhpJXynb/raR7+qfAYrQqseg
         vpGNPJlaPWJWIxKEdhZJpsS/lI+eYSkkdi+j4qOVYT3I7sK/k3ZxRX/1gAtX6Z52oQ/I
         G8qxKoXIIbb+8e008099RWFcym3al2O2UJ2PV9oEpiy/w/azLpeQEKO4WQYXMG0F81EA
         oZcH/YQ6xZEVcpbRIva69mGRgNHqqF9VOKj46o/BzKWmr3QI/cbTZNgYnK+pghZOpnlx
         sHrCPXhYakOhEAnxQzZ/A7b81P2aFW7W3/2kLh8vaGRPhCvup/ee8rLpex5QE2DvnJJr
         ARxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/jDOzh6uzvx1f7Sh7kcRWiaShRP9o8x241uxJlVYPI0=;
        b=x5851gxtxu4VUh+XWvwnJDD8+o+l84gaq3Fgm2xp0IZRom2OC1hNyTYfx9O9Sv063F
         oHBedMJcscv/hRVIJPQHorBZghWQGluAyvtCtsUZYr2M2yyVKGPVwthrZX6EI2cp+w/j
         PU5ukFlSIoLoVmtKBFyghMkIBcdf3vKb1Cj1KNjeW2Nq3CmqhcQ9eA+qfDIrAFN2svh/
         hyuLcGQd4DQ/AcZqWhoQHkuzf4AZQDYR/w14xmNkfmKkyMrWOagkWMCX/bCl5SF5Zx0+
         56BUhv2BjHr3Yho1YqYgRp7u7OfBZfP9rVE8Vn3UeHCmHjFxruMxZ134XqeV8NYjWaF6
         bzMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G3jEIXi5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/jDOzh6uzvx1f7Sh7kcRWiaShRP9o8x241uxJlVYPI0=;
        b=Xs3qYlih/ncuwN0XUVZ/zdFRENsK3Gp07C1R5IdAw0OEzwGkix8OOIbdmtVh4Fenwf
         LZAC0lK47jjRFbo2eKUTX+NCxiJO0zjxhi/IBy8Z9xi5NU6FfSgTT1VOvlVaKjOIcY35
         G0GMkgi1ovUM0PuV0PvNbJ8+DBlZFhjztG+Xv4sSMJw83PqNccWtk/8xm6AoWJyCO31s
         YJlv8q+Q+Lrpz33E++Lc008Ka1h1YRmcRHI8WwkXWYno51tMI6Tm2g2FI1OZziLxHEpG
         MMdaFAnNpHEcXC1mXDjljS/CfRO25zkqrlmzNB4MoSvx5p7roEmZ9T3EOGhm8GZOv+5s
         jGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/jDOzh6uzvx1f7Sh7kcRWiaShRP9o8x241uxJlVYPI0=;
        b=m4+aCBaFXf8Nm7+s+dXWqg335OjXAyFtjJEdV4TCtdaMADPZnH2KDxnT+j10VJ6ACl
         elmCx3RAP+uBpaJhNm0ZP+tM5lqKN5sLcMlfEOMr8xMFe2SdTJ8oL9sHYtLoolMel5Z9
         6sq+mb6IQ824UzjAkLj54kiSnEa8eXbF2XB/KBogvKV2GVKDJ7RGBr6eiFdEKpr6MolD
         BBgfaw1f8C221H4JS8tUULRj3LxTAQfZYdGVPdLZdOdLtMY5DfOJpSP8RyT67tmtjz3+
         hVYQtfmeNVQVhQoe38aojQx2ULZ0myyeHLci7s7oIQoPc7OrvpaoXc6cGRxzRadS/RlE
         rhaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533O5ZFLNFkaIzE09urLk4RJz15lyxE77aw1AJe4oNrTE+Ig57P/
	LiyradZyMjbxaoxDmg/S3hE=
X-Google-Smtp-Source: ABdhPJw6pR9l3x1am1Cu0khdPV+mBvepJk3zL4Rv+T1C9Dktgtw2CVsgdjivXWezGr7bRp0k0zxTpw==
X-Received: by 2002:a17:90b:a4d:: with SMTP id gw13mr5200906pjb.104.1624385951395;
        Tue, 22 Jun 2021 11:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4186:: with SMTP id a6ls10469411pgq.6.gmail; Tue, 22 Jun
 2021 11:19:10 -0700 (PDT)
X-Received: by 2002:aa7:9118:0:b029:2eb:2ef3:f197 with SMTP id 24-20020aa791180000b02902eb2ef3f197mr4866622pfh.27.1624385950829;
        Tue, 22 Jun 2021 11:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624385950; cv=none;
        d=google.com; s=arc-20160816;
        b=qGtwzcwNNkicqfVPH7atTpu7tSbE0c8KhzhlVRlPfP3VoIg5a2jyAQAsNmli/CxmzT
         QSb8vVpJHCB5+nK+Bdg1t/gs5yxD5rhmvWfdOtjInXtRJ20lia6XlTHda0O6qo/1nENU
         /0wtc4J/ZghPFu4Ah96Owmir1QXcEG7u5myTLTLBswqOWcaU6GoK5aij8cTQZ2WaAI4Q
         VtCNq5JYVBKtxqWdEnfDftsqSOK05NXdTmyQssArAi2QhWxg6E+qoXO4glMKXJHxj1jZ
         ruycmSr4nWJuUFKbUFky7eBMv5h3ER/VEKi8rVqp9yOr9jksDY3lakNHCq1HGMgcdbAK
         E4+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vHkhwZ3qyE8u/Wp9tD1mKmbxO9a75mKPe922mGmNuX0=;
        b=vhs1WRWbxa4esaKQVE2h9LmHN/oP/OVIMFtNWrAilQzFSEt7HkPLeZd39IY3+eUMS2
         g0bTR2+m6Ik3LwsEnyPVmzgKNzwlvynL1i5QSCV8ZEO5LJDLZ0jsEspE3pQU2hJSECJq
         7K1SZYOnbWkqK4yXqr/X1UFlGcyPcHVFwdfifg0hoOskd/+5XxiCQmVCmfkkNsK5+Tdt
         6QU24D6MThBu3ucvoCb/Ang1mg+OgB9Metj5+RoVN0scDEfPW9uSBJKBAL6Z8AqBTlzr
         lPdGJAzbYSWnnUEFxMAWXtA+x/spqmUtPJ9GiFBbpS0jYVGm798zrHpuWrS+RgWCJkOS
         Ud8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G3jEIXi5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id y205si7755pfc.6.2021.06.22.11.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 11:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id v7so17794488pgl.2
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 11:19:10 -0700 (PDT)
X-Received: by 2002:a63:a51e:: with SMTP id n30mr24200pgf.104.1624385950559;
        Tue, 22 Jun 2021 11:19:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w7sm2921928pjy.11.2021.06.22.11.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 11:19:09 -0700 (PDT)
Date: Tue, 22 Jun 2021 11:19:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Borislav Petkov <bp@alien8.de>,
	Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	linux-toolchains@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-s390@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 0/3] no_profile fn attr and Kconfig for GCOV+PGO
Message-ID: <202106221118.34BE990@keescook>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621231822.2848305-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=G3jEIXi5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534
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

On Mon, Jun 21, 2021 at 04:18:19PM -0700, Nick Desaulniers wrote:
> Add a new function annotation __no_profile that expands to
> __attribute__((__no_profile_instrument_function__)) and Kconfig values
> CC_HAS_NO_PROFILE_FN_ATTR and ARCH_WANTS_NO_INSTR. Make GCOV and PGO
> depend on either !ARCH_WANTS_NO_INSTR or CC_HAS_NO_PROFILE_FN_ATTR.

Awesome; thanks everyone! I'm doing a Clang rebuild now, and will do
kernel testing and push this to my for-next/clang/features tree shortly.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106221118.34BE990%40keescook.
