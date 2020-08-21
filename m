Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXFCQD5AKGQEO7YGD5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC3C24DF6F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 20:24:29 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id gl22sf1494601pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 11:24:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598034268; cv=pass;
        d=google.com; s=arc-20160816;
        b=0p6U+P4myaAv4JOjA9GqKPbFj23C+CLNdWfj/WCkqLlD2j2cuQqlaYaLpdy66fcYE+
         XHk34IRfjG85kboiFbHQieEG8SxCTpr7rqIbq+B+nDQsHDK5EXMD82H8uE0UBFSz2+kQ
         S0jemmP+RRyxBTwpFFEawOePkaxBsrrsuKmBpvkodeiFFuJAg9lGZzMDrc0xAhQzA3G3
         gLQW3DkWZiNM5Y6mlYoyDx7wKjgWt+8N6PRRz6Z6jllbxPE0JuRImDT2khQNSQxDZMJS
         2a8xvZSzIIMYFBlFSkrFvh8KdPWa07FvBrQaaE66aGK3//v5/yiFNoauTb+OjGEH5LEM
         Yzzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZMOBVzJTKe/1tbst3yTbL6pV66jrcJUY4WHqS0ftpwk=;
        b=CqVMLIkYT+zPMqSKZB7oXyRa1DWSweNZ9/okIjDJjENkBfdU7imdZhbmdua9zt4egA
         yIYnwo5QcmGJidpDGv5XhzgHPu2eBMimeKUmcR3x/d4F8ScA9CGA3QS3HELnpQd7+Pyb
         cXRuJ1N2+kdG8mcof2Vwlg/MUFPkjhxtiZLwmfGZSwDlTVLGSE2MU/r61FmSSMANyhyz
         A5tSwXIz06ih+ZVsw38/P8QR3a1/qbruAGFII0QnslhCiifN4QPAIHM6WH6l6RDFVxui
         I0ht7cBWU9X6ag46uS10lRGOI0Dv/ErECZsuaWZPbSejXSu6LU3BUz6lhHrXvIvep60Z
         eRVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gL3E2vI4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZMOBVzJTKe/1tbst3yTbL6pV66jrcJUY4WHqS0ftpwk=;
        b=UIrO/sx4hISh66/FGZacWvzT+x5G4Ys8WNc1mwh1pe3wCLwhIsQCwXZGBv9i2Vn1wq
         T1a1iT5mYfRNgtZCusU4qZNkS+B0F+oa09MRnQM6zmM7I3J0aNQW4eTn8pJ0wcJefwJr
         gldFrrTIpuIJI+8Jnv2IjOTNnCiwrVkHgrnjKTynRlMbKOSfLxRrfsGsfNWEuT1mhsd6
         fnsSr0lICErnfIHHEa1mWQWIzHZuiCoq1qv7B1Wq1qaZSrfZopfAZNmEsUK93e1htHg1
         FMPz1RvesJsUWBET05NkeHsqI7x87epfKKF15iM6cNCBthjyDF+HwsWAv11Dz6GgZJ0+
         AVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZMOBVzJTKe/1tbst3yTbL6pV66jrcJUY4WHqS0ftpwk=;
        b=dIgLXa692VOD8XZT5gziseCaqEbNKzB425k/Qx5Y1C+R/eFGevdLri1NEkQqQHpiCA
         c6l7luo0/wLdHRhnz9OecrP8WhB7j6BXIrfeg3gThJFxQaQH6UhfxpaUp+FV7umC3ixK
         nZq+8qNSfs2/cqDh8BzhE17TVJMKfWuitYbhCPpuBwwZxVQWgvPhxzZPCQSVTcqlqapJ
         +JOWrgx0wj/Su2kz50jYYFrL/FIzbR1Wnwy+fEwE+c4W93WWUwRZAMP9oNCV2LT3z+NJ
         CSsZX7jK4CRfByq+qitVzov5a8MB+A5NhthJw4RNcVTAm+zdVVMuEWQMUDggG8hJ1A2n
         Gx2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530i1Fq0P+K+o7XCIU6Fl921RGHKWK2JepMPP5hHMks5bWWCjdh1
	L4MJL2KkJ03QGKEuIwjKreE=
X-Google-Smtp-Source: ABdhPJzP43QHprNhdfyaqRp/ZIod56ZgxX+zhMfbBcdy1Ct8+Cn41rJUjWFIjxQqvzFvMA6WoUE2hg==
X-Received: by 2002:a17:90a:de10:: with SMTP id m16mr3522483pjv.34.1598034268366;
        Fri, 21 Aug 2020 11:24:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls345237pfs.9.gmail; Fri, 21 Aug
 2020 11:24:27 -0700 (PDT)
X-Received: by 2002:a63:1052:: with SMTP id 18mr3220551pgq.311.1598034267806;
        Fri, 21 Aug 2020 11:24:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598034267; cv=none;
        d=google.com; s=arc-20160816;
        b=BnpAioy7/WFZwL/vJGKzbBhUKN/eIAb1zqYfHLMxOtEuPS6+mVOvstcDP6Tl3WFvsL
         0cbAOBSWwmgLUthdzjTatI2N4nZBgEUsNIOm3iMt7bzUxEpjnPURnamfXIg2nsyANBJG
         5do+ep2Ufl7k6czkTyA8tOkQJsViivccSxZQHSfDsyst0/uwqgAxXMYhY0FObV8RvxCJ
         D2nP56nui7yzjVW9j5ka0i5jrnASvk1/46n6v2Oz2i/ZKNlE1FkOjfsabA/g4OFNQ+HB
         b4tFpPlm8bocMmuAwQvciZECUYX30DNJwlqoorOk99OEb7CuKUYiRWfHXe0kaJTe6VjG
         mhLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=P+HGPUUEt/yeZPA3aGMYIqvfoymS1eSd9/ssdWii5Ww=;
        b=IBJ+/25GcYFATkI2n6667TaodFWKG5LAW5801Mf2IX1tHkbNUKOQDlDGtf3WrZgHBs
         6TReqjrxw0EmnNC/FwNkd+rQF1KwrYIwUDxn/oCuYNTFTfvEQ2bGV3t9uxdwCmn2fZ5o
         i5JTgCOgumoWrUAoOrcV0861n3Uiy8zBNuFRISKuS7nIFb3w3Mr1524k19j3oi53gL1y
         9EXaObujMxWkgKcqRoHh/KXd/mdsIdLcGDYzlGvJ1hLm7DvQ6/N/Zl3etmeYFGwLmMHd
         We7/4JcpMxAofSCP/M8gMupZfql9sw5tLKp1kLEyh18gReRylK+qtod+ViSS/BBvQERr
         +1ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gL3E2vI4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id x18si151429pgx.2.2020.08.21.11.24.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 11:24:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q93so1226242pjq.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 11:24:27 -0700 (PDT)
X-Received: by 2002:a17:90a:34c3:: with SMTP id m3mr3347042pjf.71.1598034267529;
        Fri, 21 Aug 2020 11:24:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h1sm3273433pfr.39.2020.08.21.11.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 11:24:26 -0700 (PDT)
Date: Fri, 21 Aug 2020 11:24:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size
 section asserts
Message-ID: <202008211123.AD9EA0441@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
 <20200801025325.GA2800311@rani.riverdale.lan>
 <202007312235.4A48157938@keescook>
 <20200801171225.GB3249534@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801171225.GB3249534@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gL3E2vI4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Sat, Aug 01, 2020 at 01:12:25PM -0400, Arvind Sankar wrote:
> Actually, moving it to the end also requires marking it INFO or
> stripping it out when creating the bzImage. Otherwise we get back to
> that old problem of materializing .bss/.pgtable in the bzImage.

Yeah -- I wonder what the best way to make sure we avoid causing the
.bss appearing again...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211123.AD9EA0441%40keescook.
