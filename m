Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJN5XD4AKGQE75QAAHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0630521FF94
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 23:07:51 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id e14sf104199pjt.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 14:07:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594760869; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuRXr6C4aLC12670p5bbs4mpcA3vCEN2mefgFtYbOV+x1HXhTly4bYmLyYc8TvSavO
         797zOFRwyv83ek8u1wcSrzkd4zOxuf8knOel9W5rtmyaNKaifkI6S+NUdHzJ+8GzLisR
         bFsIzsqnzKRlFwiSQErQ5waFYMKHXo1sKWPnr8FSD0ez9+eBQjjK5XDfKmAHOA4KaKIn
         5pVADzfXyPBYdLZOYr7Dr/t+V3hF2wtVePyr4gc+ykmFCYYTljSX91FAmHz4w+1XLJqO
         XY8IWjOHlnYR+XKVTKHEoa7qGIu5+levApA4YNUFgA7mljEiOzYuXtaARCNPyA8oWvlJ
         gb9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=0Nz8vtkb7GGhdtq0U+LmlZSAJJzEqD3qRa3dpJxeuXI=;
        b=A3xdNWPz43qAOM+FlKcNpxBr4yMag7yZIv7KSCcSX6w+NT3F+yPu6ZXa2djDJkfRAz
         54dWnkYypXL/q/IOu3S3gscCBGKhUGKfyAcncArHvk+4Qmdq3JmYg51JnrnHV3fErtTS
         nAGtBg6YC+Xzs6HAAcgIMOe1FFfCM/FKmdPW39fsY9Z+To63EyW8POb2iZ2lcqAMZZaC
         dcWu2oqFyEwT+ABK6prDmFlvZR7bMtMDjiBwin19zHDVdD7InAHz+gGJwJxLoRiSjZXl
         7oMdp5PZIPnyef/aNlhC2N3cjHwEni6VeXYQNOEHSvxrb85YoE2v6doNSD65hP/9tHMG
         6lOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hlMTj6kj;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Nz8vtkb7GGhdtq0U+LmlZSAJJzEqD3qRa3dpJxeuXI=;
        b=N+BOcRYiKkNJ64RWGKS6uIICNKAl9IXoHs3EP9N/PQPsG9zFWBES0tohT0D7q7VDnk
         Y/dWHwDPavKbwK0OkUgJvhUkAeePSbsRYcC6vd7XcDRhQYR0YBLdM/0/u9khhQ1F6gcQ
         KiNNuKC3jQaGhVYqss0MPXhBJDrzgDCN7j6r8oEoSeWFJEqW9CJpfsBv16axLY9E8n6p
         8kTm0JZwldgP1VNyG7Cm3mOZcczOBF+LnDVky/8a6+TFp9ontVzft7E2v8fjUo8f9nGM
         wY56xL5OBweOzIVBjFq+RdOrSrZ/N3VMYFSdfPe7FGhWY7axW16V4W2jGzYbUYwDt8xo
         n4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0Nz8vtkb7GGhdtq0U+LmlZSAJJzEqD3qRa3dpJxeuXI=;
        b=JAcsB3lgfBt2tK98/9GRMq269+gTR/atbnh97KfkRfIQ4ufUNQ18WYyVHbTIDsLiSt
         nZN2lwyqBEgbSPnGS6/c3n5tnt8MO8DLVMO1/98s6/0yI5Dp64Ef6u7kCVXMhLuM0ad4
         XWLSc0CLUfdqze6izZYtDfgVrsyS6DKoB2tDR8SThKbxLPNhU9rn9RS/yS1FybX+4672
         yGAppf1TP9OfN/viKJVNGwplhUkVy3eDNJUSplOXmkGRYDu0CkQqhZYnCCy9TneKBH5c
         YjrRprZzuAEISjfvDgcnHSBA4LlZsQhtPrp19IlR18y9JOPD12KvpAQ5PCVbn5XlA707
         SYoA==
X-Gm-Message-State: AOAM531mw8PM6quSBzjucLRKgFBxJHWrytCPErB+rqhuaFLsaULVqNLZ
	PZKEiLZU2vqLJvN4+Fpp9BI=
X-Google-Smtp-Source: ABdhPJw8slzyW0rLCkzOV9JuIFP7FjNP+3MhgvbJx/CB5z1NiZ1NF3pyM2/3m/mtNeUKVO9mP2vZvQ==
X-Received: by 2002:a17:90a:668f:: with SMTP id m15mr6634409pjj.32.1594760869792;
        Tue, 14 Jul 2020 14:07:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls6905975pfc.9.gmail; Tue, 14 Jul
 2020 14:07:49 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d4:: with SMTP id w20mr5939715pfu.279.1594760869319;
        Tue, 14 Jul 2020 14:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594760869; cv=none;
        d=google.com; s=arc-20160816;
        b=F/X7btlf8jwaQ2qX5RYldZ3GkWAge5BCzETHXXOmuA4sc/i3IEddEg7zclWo8NTMpF
         65bhZXYXi9wKyhuj5aDB+iCvcfoOr1BfSSiG0TjRxjR2MhVtol9yO9ywfIb0oDCSjxuA
         oju3AICdYz2xiefS88StMI0S+RebRLbjNUOsO2IZkX3Mf8Zq2CgvXHvmvNs4oxEB3GiM
         vQmX4a2OfXypXz3O+MN0WrCu7o3mpqP00oaIl/o9ToCQR64Zl0nlRRfRyNfef/agIXv0
         edonCCVthedrwM09ASL7Ze09Gop8w0jB4UWmLMaO1L1/YMHJk/0SYFtV5Q3ShSJoFxJE
         va0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=11WJyEAm3+xbqzduMNqA3WjbGwHVjoCwQAhn6aCLeDs=;
        b=UH38G44jJe9NZejQ3hcChyLlpHLBzitiO/AX4uqDb9h7hXZoFeFDfS9wicWzl/N1Oa
         BY0WHuwj4CgsdbfL3M3qDCwdgqYFIMLTejfrZXi5xLqTRcIBCnJSqnd67qXleYqouY9T
         ogqfedsS/94F9Lcc7o3bw1cDwXjJm9cww+s/5IPbMcHgAvQzJigr32odW+48UxXnt2Fa
         P6f/x3WOS82IlC06J/8NNTt2vChZ3/Bol1hjsnVe+y+EufSd0UBwsxCuAIUPiTpEyq68
         M9e/uewhGPCOqUI+o6v+6yKHNv2gJnyuxygmL8ST/ozJSa68g0wASaH+n6VE7/bL13nD
         LqmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hlMTj6kj;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id md18si190489pjb.0.2020.07.14.14.07.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 14:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id d27so34620qtg.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 14:07:49 -0700 (PDT)
X-Received: by 2002:aed:3b99:: with SMTP id r25mr6640502qte.315.1594760868524;
        Tue, 14 Jul 2020 14:07:48 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m20sm21772838qkk.104.2020.07.14.14.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 14:07:47 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 17:07:45 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714210745.GA918357@rani.riverdale.lan>
References: <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan>
 <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
 <20200714202100.GB902932@rani.riverdale.lan>
 <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
 <CA+icZUUtcQhzO=1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw@mail.gmail.com>
 <20200714203537.GD902932@rani.riverdale.lan>
 <CA+icZUX93x_vhG-j+H+ktC_vt1d0f-KWZ+0L+hf1dnr=0L9h7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUX93x_vhG-j+H+ktC_vt1d0f-KWZ+0L+hf1dnr=0L9h7g@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hlMTj6kj;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jul 14, 2020 at 10:43:11PM +0200, Sedat Dilek wrote:
> If we move to LDFLAGS_vmlinux we can drop the "call ld-option" as both
> linker GNU/ld.bfd and LLVM/lld.ld support this?

No, because ld.bfd only started supporting it from v2.26, and the kernel
aims to be buildable with v2.23.

> 
> Do we need to adjust the comments?
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader
> 

It looks fine, no?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714210745.GA918357%40rani.riverdale.lan.
