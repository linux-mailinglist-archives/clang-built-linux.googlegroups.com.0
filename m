Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDE662AAMGQEOKGSCTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 68458310FEB
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:31:41 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id u14sf4904832plf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:31:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612549900; cv=pass;
        d=google.com; s=arc-20160816;
        b=qHkd9ujP7zhQ/tT9GcltLWRC6eIvYw+YvFstolT5fvZxWA06IPs7AGzGX9GuypX66o
         +0+ltbnwGMLB3Not2y3anH+rxyCK5WBptQbHkgOQN38Qh2kmao0T/fa8uTcZ65FeYEQf
         dXl/PZEkH2pSRuNGuNCYlLlnQH6eExDpTNPA72BSoSqcQ1OdF/1SeELdyQreld+DpPwK
         73MLU7zCHKowcwFV/i9cT4+hqNghM1/8gAXvQgIQ/KBj+Cd7E3h9/hliYKSvCzauJpDg
         eqTBQalw7AccLBrHuROts9qn7Y5/RVEqzMAsIfY5vhwTSwqlS8+mU98gOKPebyyOlggg
         E3AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Dfd8Pfxd6JBaw4unlUT9H64qKeAHZyW+49TrvD+rN0M=;
        b=LwmKpeTWoUrF5p8uMbl0y05xSoDezU4ivcvWfuI4b58auEHrdM9Wu5YRPnQO1mFxk/
         gNWTLbspfGRJ+4bl0dPCSpgpQGXv1+1YJmJA1YAW6LsZWZIHwuVujXDl/60UkZYcm7yE
         x3nTUCBty6orN74ErRLWJnx1AQvVYCLBCYnHbHsDZ5tKrsggn2Pk6q8JW3lGJiH5dzLk
         4epW0q2pJ7KDV/g7zK5GNqYTIxxkdTQH08diPBcdxWOzDO3y+uH8Z59celEjq8/PlfHR
         3ky40whO5jxCyQSg5YWT5Cq5QVdwAzdIoD7lG46saq3LB2JFprBnciWL3czeZYzTIpp+
         lUHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eS0W03i6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dfd8Pfxd6JBaw4unlUT9H64qKeAHZyW+49TrvD+rN0M=;
        b=mRFBUv0VwPw8UcRpc+X7fLffoulr3pkBq4s2GcOlX71dGdj7zc+bVdw0bIX7tVmz5Q
         ImOOhshUReuXd+LkjXMgyN/s/H+bOTXox57saxWPG1CAzg8f1dGWkCntsDn2clq44mwL
         pnsdkPu2Kt1Fw/jZ91N5FlVqE4i7/9R72xyHpi/lUc2k1UAs9JVtADVTv/+VnQJRQJWo
         F9e9dL+WqCFDnZrwdHx0qaKl05qOHqZvV5HEwbIoJHUmXL/Ml/ofjp3kM2vmJAGBS0Gh
         pWpi+n9olE0YlTT9VzNtNeZmCr6ZVnmcYnW5LNzfYz/nYB/HDaGPXkL0XeN7uQBDGMGU
         qzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dfd8Pfxd6JBaw4unlUT9H64qKeAHZyW+49TrvD+rN0M=;
        b=cvCSCDrqmoKAN/rtIMC+c+ecx8J/zP/YW2kQb6YE7wPL8yFz50d+qL5fxw8zk1TMLd
         3qh/6rtUPsU07XDpXj3CM3EOP7um8zmhDhLJ85a4fCzc+Vn/+Id775ItIU3XQTZo50/9
         CToSKcAyiqTsKnVgxSzY6MORsQ7tUbGqQjZaaGWQ5xW5YY0yIkeDtAYEAxmldLmICMr7
         mdvj6FgKGpCSi8nXf7tOJFo5+0TmIjJXgeCD010sq44u8upwl84+lqBzpz3Lvjyy6BHf
         AU+oU2hw5EaTKKmszzBbmtFnTH7TPxMTNG10WZI4SR/c98y2cXUTzFBFl76vx11HbHgq
         HwiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302HvyqKvKAWk/r2GG90e5wyrIfsnBD7iciod3DMuopTUkMcQ99
	JXGDn+LTkvQX5iQjNoOpCQE=
X-Google-Smtp-Source: ABdhPJzLNVLcfJB0lRZQHRXBBeyV7oaHQfNSyS+poO6zbZ3u0l5AJrhtGrTqH+pV8wmL9K9wUd2A/w==
X-Received: by 2002:a62:8803:0:b029:1d0:6910:7b07 with SMTP id l3-20020a6288030000b02901d069107b07mr5512566pfd.71.1612549900159;
        Fri, 05 Feb 2021 10:31:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c401:: with SMTP id k1ls4163650plk.1.gmail; Fri, 05
 Feb 2021 10:31:39 -0800 (PST)
X-Received: by 2002:a17:90a:fe1:: with SMTP id 88mr5218031pjz.157.1612549899572;
        Fri, 05 Feb 2021 10:31:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612549899; cv=none;
        d=google.com; s=arc-20160816;
        b=M42yQp1cKt4uwGvfi4KMduH3zGC0c8C7v2OB3+4USCUfr4hviZg5W/C/zXAvnqPpk0
         Ds9UzZEazbSLIuO19JVGTFu72EFiUgwEG/vX85RRUK9TpAW7Y7tiYchu14zMtShq7WoG
         haulF0rq+pDe2Ozv5M3CDJl7RslrxYhHp6qZnw9u6PQMkzmuW3K8mnjxn8xD1VSFvmZv
         KJ4Zn7b1737JsAx1ls4pN6c717xhkRdEBHMeN/XmM9U80flmfFCCMsj8pfjOIuNVo4g3
         MQkknbc2UYUSXdew5ucDcbsCQhPPQzwPsSyQjt0P+Oss5w/QZzGoU8fLzigHktGm8HA9
         Hd2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=umm5uE9W8mckFYPBamArgNGURzP1So7BI3Lz5XaDlzU=;
        b=021EAQqjeHy4DCy1g/xWSo0RzcxzwcNNZHfjnV2RYLJ+RriL9ct/YiCaOLCvAgNfCe
         4oVUMO9G/Ukw2TJhW33yuE7aPLQY276Iff+7efs3QlW0UEm+hdu53lCwQQoEygBEyh/y
         vxGXvzc8K3n2c21wzqDqMl4uhKSfoVZzqliMjTo6SCrvTpij8ZImcMjFjmZIt6ZYB8aL
         IQG2wgHvDEt9O03WlS2fGp1Rb9J0wHp6mhOTTYje/RcPNSbzj5YwZxEHx7b6VVCo1mu1
         GO/wTr83iOQfVofG/nOv6lHl/Z6eHkv3GBufSuPIDpTBOJygodb2IbzfFUVqyoSdG8hh
         c16g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eS0W03i6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p10si472905plq.0.2021.02.05.10.31.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:31:39 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BEE864E75;
	Fri,  5 Feb 2021 18:31:37 +0000 (UTC)
Date: Fri, 5 Feb 2021 11:31:35 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210205183135.GA3393009@localhost>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <20210205103457.GC17488@zn.tnic>
 <CAKwvOdnAoNrbAs2kLng-k3L8j4hGS5HtJUv3L-pVwi+5dARQfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnAoNrbAs2kLng-k3L8j4hGS5HtJUv3L-pVwi+5dARQfg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eS0W03i6;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 10:27:54AM -0800, Nick Desaulniers wrote:
> On Fri, Feb 5, 2021 at 2:35 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Wed, Feb 03, 2021 at 11:51:48AM -0700, Nathan Chancellor wrote:
> > > x86_64 all{mod,yes}config with clang are going to ship broken in 5.11.
> >
> > Dunno, it is still broken here even with those build assertions removed. And it
> > ain't even an all{mod,yes}config - just my machine's config with
> >
> > CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
> > CONFIG_UBSAN=y
> > # CONFIG_UBSAN_TRAP is not set
> > CONFIG_CC_HAS_UBSAN_BOUNDS=y
> > CONFIG_CC_HAS_UBSAN_ARRAY_BOUNDS=y
> > CONFIG_UBSAN_BOUNDS=y
> > CONFIG_UBSAN_ARRAY_BOUNDS=y
> > CONFIG_UBSAN_SHIFT=y
> > CONFIG_UBSAN_DIV_ZERO=y
> > CONFIG_UBSAN_SIGNED_OVERFLOW=y
> > CONFIG_UBSAN_UNSIGNED_OVERFLOW=y
> > CONFIG_UBSAN_OBJECT_SIZE=y
> > CONFIG_UBSAN_BOOL=y
> > CONFIG_UBSAN_ENUM=y
> > CONFIG_UBSAN_ALIGNMENT=y
> > CONFIG_UBSAN_SANITIZE_ALL=y
> > # CONFIG_TEST_UBSAN is not set
> >
> > and clang-10:
> >
> > lib/strncpy_from_user.o: warning: objtool: strncpy_from_user()+0x253: call to __ubsan_handle_add_overflow() with UACCESS enabled
> > lib/strnlen_user.o: warning: objtool: strnlen_user()+0x244: call to __ubsan_handle_add_overflow() with UACCESS enabled
> > ld: init/main.o: in function `kmalloc':
> > /home/boris/kernel/linux/./include/linux/slab.h:557: undefined reference to `__ubsan_handle_alignment_assumption'
> > ld: init/initramfs.o: in function `kmalloc':
> > /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
> > ld: init/initramfs.o: in function `kmalloc_large':
> > /home/boris/kernel/linux/./include/linux/slab.h:481: undefined reference to `__ubsan_handle_alignment_assumption'
> > ld: init/initramfs.o: in function `kmalloc':
> > /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
> > ld: /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
> > ld: init/initramfs.o:/home/boris/kernel/linux/./include/linux/slab.h:552: more undefined references to `__ubsan_handle_alignment_assumption' follow
> > ld: mm/mremap.o: in function `get_extent':
> > /home/boris/kernel/linux/mm/mremap.c:355: undefined reference to `__compiletime_assert_327'
> 
> ^ this one is https://lore.kernel.org/lkml/20201230154104.522605-1-arnd@kernel.org/.
> Trying to get the last of these tracked down.  I think there were some
> changes to UBSAN configs that weren't tested with clang before merged.

The rest of these should be resolved by
https://lore.kernel.org/r/20210205023257.NJnJdyyZk%25akpm@linux-foundation.org/,
which is currently on its way to Linus.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205183135.GA3393009%40localhost.
