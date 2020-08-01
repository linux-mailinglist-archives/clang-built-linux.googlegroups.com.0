Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRGNSP4QKGQE7AYXOEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FBE235022
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 05:51:33 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id k142sf22158998qke.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 20:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596253892; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPShKeZaCbLDFwwwP4US6GMxZlYZioKXRV7OCvoJoA29edC36gDyJMI1yT87JIyTL7
         kNKIlvYG8daLhqURnDlIjOe3oeSFi7awzYJrejo1dU4q2HhvUDr1qnTq7W1EOrpQDN5n
         oq8GAu0bWNbgsZ2u7t3G0DMugvzAgst/Pw5tlPk5k9G5bygjdNqaQHLCeYcjrPszFCL0
         zZvoXbeVmGXMIoebOCgaNM4ajTTAV93lsu7ri8+je0l4SzoNTYzRoFghfSG36ig+cjdy
         jLQZMLbfzB8ixLr+NFbPuGF6WFkreU6VJpLwV80IBQpqE5umMLmZp/OgLiCeQwZQDLJa
         Ugkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=Sxn7pfSNrQEwL47ZfG7DbEqs/7q1AqmxoexqRiNuDF0=;
        b=VHTLpvRuhg1vJpTjrKB02MUFdt9qUJk8SfLJmOloA4DNP/pkQwyeEc6gMyZFLEW82v
         ywpESac/YlkFPYXwqm5GzMB/abbVtwxQm6azOYqOBXcjLfotoLtSxhQ+xduPiy4uJf5Z
         JjP4QDQVBCj0lXVH6wdQxwXTX+ff6MTEbOEMsZ0v/1EojYYSx+YDap+QPrsu8cwN3jRK
         Izl+KdlWQg2/uxrIxmhOAuEleX1GsjewHeans5EiYhl8K8HFzWn/FfST8GR38xBQ0K3r
         LOc8qE9fx5AOHicAzUsEKkaEQPVx1CFkQRiBNDl4z7uuz2VFo09EpDL14BMwovrckA3u
         yWXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iUUSE8iL;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sxn7pfSNrQEwL47ZfG7DbEqs/7q1AqmxoexqRiNuDF0=;
        b=ZWrHNLUYZYB6mSlaM0JMIZlvLDXP2ytHM/EtDT6bmkNq85bmckS0doxIlSEjlsniZt
         zcnmxvwtDGABQN0R7d3aYPB7kREF6IxL5L7riuUxpLSQGN/FD43GvI1WjXa9gYHAFrAH
         OhnHpEMw4+iaYdcYum3OqdED5Cu1w8HUl+bF4U2fIUem1deqNBkIr+dFhj6Y6BabpGEw
         WFfZjjDPRf5dZcTa09Uos2zA4wZyixw0+T6UZ8anz2uCkQRx5vxDzXHrIFKIn/iCa8Uo
         FiWEDULCWkxMmSUUbIDBLnBzJysIZU3B7W6JjE3dX5ZzCye0nID+p8kKY3j9/MzSvd1y
         Z6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sxn7pfSNrQEwL47ZfG7DbEqs/7q1AqmxoexqRiNuDF0=;
        b=TNST7GtJU34zROnkW7h4ulwky7SReHLM4rRLGyI0j+u0XRTwSrYmtThhKd0p3pRXL7
         c/McMtA7MORhwU8dXCecQE8LySesYUKcmaEYC820Egte8BGWSyTq7FZXXIUskcj9MO95
         0BN/tFyY41eOl7Rg/BX8PEnaCEFgCMqzMa+a/iu0dCmLJceWCLYlBpTQLDzNWdMhVUPo
         DlO4NFsbG2LYMPMVrGFjdFNf1FqWkSbUg83y3q8+YoAqoirOZT9/tcmfe7FeC/M/EO//
         6eiiQ1irMFLx4LxxHFweVXANoNc9Whstsvbnsg5e3oc0LiveR6f45Jq8di4jYL2XqZtc
         QDUw==
X-Gm-Message-State: AOAM532CGG98kjksi82m/JPQsoVfn9Ml/s01+oQwwSeoGfu1ftFJTAf/
	nxWZ6ZuJ1ul2rcPRDZQXLTA=
X-Google-Smtp-Source: ABdhPJzDRmyIYNpKlxRm1B8wo9nApct44HtIlQv3cqX0jKc6yCq+Fy718MmhnHMD0Tymi43AFGHjxw==
X-Received: by 2002:a05:6214:68b:: with SMTP id r11mr6933089qvz.226.1596253892133;
        Fri, 31 Jul 2020 20:51:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ee18:: with SMTP id i24ls5146527qkg.10.gmail; Fri, 31
 Jul 2020 20:51:31 -0700 (PDT)
X-Received: by 2002:a05:620a:1285:: with SMTP id w5mr6677967qki.21.1596253891752;
        Fri, 31 Jul 2020 20:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596253891; cv=none;
        d=google.com; s=arc-20160816;
        b=OVex88r5CQhcVjByynKKZxcomqbnODkGRAAxl9mkeTFFSGHQHFUznkGTW5XG5ftcCm
         PWquaLZt/srmOAW2jIYowaL2V79Me2FzN+Fta7Fp4HN9qmd66aOeLt5RBOQdYYHkawhr
         XIz9Ndn3Z9lF0KfS0VaxL0rEnPaI+AkOvJOerZUeoqMcv9C+5so4sgwuEpfBk3epJZRT
         Gt6H5bntXQl0715DDMo5uT97KZPZZLmsA4HpsOEEpfiG/4r3TvezJYgW3Qpnj3qIlglN
         IG0+BA65xhu8Wrlha/W7ObP3RvVUpiikwSsrC/DE6KC5aeLq0U/Eh3X8sWhZezQ0G85t
         oCnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=PayQ/qqXfalVrPUBjKqmyKH4cdevaDuV7wVHaPmWgJ4=;
        b=zB744eEl7V782Ric6MTf5lihcgBDp5B95CILeLSUlH4PM10KfTcAuYVYUndCjF/LOb
         ce/ZoxXaJ6H+uMDfs3FoXydFVxb1a/p5k0GsPjvBz+XFaSv+RGPsnPT5KbsnLgmYvLYL
         R0KopX/M7wyTC4vvo5IeQF3x7xajI6v3OYqMpea4itrSxcFuoDBVYXbd87GK1jPxWCin
         4bd1FC3WGrxl0/dGku1xIc4DPDogtsRfT97eYbqTe1xdWbzyKqeZnFp5mIaaIDNKLMEX
         6JyVcZ8BFrlf06RqcD13FH38AeJDFPxYvnMcr5LL6DCEe5S7rRq3+CBaAfCNTLPupJfq
         1nUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iUUSE8iL;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id n26si548946qkg.5.2020.07.31.20.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 20:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id j187so30715045qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 20:51:31 -0700 (PDT)
X-Received: by 2002:a37:a187:: with SMTP id k129mr6752037qke.196.1596253891434;
        Fri, 31 Jul 2020 20:51:31 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 139sm9716015qkl.13.2020.07.31.20.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 20:51:30 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 31 Jul 2020 23:51:28 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200801035128.GB2800311@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200731230820.1742553-14-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iUUSE8iL;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
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

On Fri, Jul 31, 2020 at 04:07:57PM -0700, Kees Cook wrote:
> From: Nick Desaulniers <ndesaulniers@google.com>
>=20
> Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.
>=20
> When compiling with profiling information (collected via PGO
> instrumentations or AutoFDO sampling), Clang will separate code into
> .text.hot, .text.unlikely, or .text.unknown sections based on profiling
> information. After D79600 (clang-11), these sections will have a
> trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..
>=20
> When using -ffunction-sections together with profiling infomation,
> either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
> sections following the convention:
> .text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
> where <foo>, <bar>, and <baz> are functions.  (This produces one section
> per function; we generally try to merge these all back via linker script
> so that we don't have 50k sections).
>=20
> For the above cases, we need to teach our linker scripts that such
> sections might exist and that we'd explicitly like them grouped
> together, otherwise we can wind up with code outside of the
> _stext/_etext boundaries that might not be mapped properly for some
> architectures, resulting in boot failures.
>=20
> If the linker script is not told about possible input sections, then
> where the section is placed as output is a heuristic-laiden mess that's
> non-portable between linkers (ie. BFD and LLD), and has resulted in many
> hard to debug bugs.  Kees Cook is working on cleaning this up by adding
> --orphan-handling=3Dwarn linker flag used in ARCH=3Dpowerpc to additional
> architectures. In the case of linker scripts, borrowing from the Zen of
> Python: explicit is better than implicit.
>=20
> Also, ld.bfd's internal linker script considers .text.hot AND
> .text.hot.* to be part of .text, as well as .text.unlikely and
> .text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
> see Clang producing such code in our kernel builds, but I see code in
> LLVM that can produce such section names if profiling information is
> missing. That may point to a larger issue with generating or collecting
> profiles, but I would much rather be safe and explicit than have to
> debug yet another issue related to orphan section placement.
>=20
> Reported-by: Jian Cai <jiancai@google.com>
> Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> Tested-by: Luis Lozano <llozano@google.com>
> Tested-by: Manoj Gupta <manojgupta@google.com>
> Acked-by: Kees Cook <keescook@chromium.org>
> Cc: stable@vger.kernel.org
> Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
> Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3D1de778ed23ce7492c523d5850c6c6dbb34152655
> Link: https://reviews.llvm.org/D79600
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
> Debugged-by: Luis Lozano <llozano@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/asm-generic/vmlinux.lds.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmli=
nux.lds.h
> index 2593957f6e8b..af5211ca857c 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -561,7 +561,10 @@
>   */
>  #define TEXT_TEXT							\
>  		ALIGN_FUNCTION();					\
> -		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
> +		*(.text.hot .text.hot.*)				\
> +		*(TEXT_MAIN .text.fixup)				\
> +		*(.text.unlikely .text.unlikely.*)			\
> +		*(.text.unknown .text.unknown.*)			\
>  		NOINSTR_TEXT						\
>  		*(.text..refcount)					\
>  		*(.ref.text)						\
> --=20
> 2.25.1
>=20

This also changes the ordering to place all hot resp unlikely sections sepa=
rate
from other text, while currently it places the hot/unlikely bits of each fi=
le
together with the rest of the code in that file. That seems like a reasonab=
le
change and should be mentioned in the commit message.

However, the history of their being together comes from

  9bebe9e5b0f3 ("kbuild: Fix .text.unlikely placement")

which seems to indicate there was some problem with having them separated o=
ut,
although I don't quite understand what the issue was from the commit messag=
e.

Cc Andi and Michal to see if they remember.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200801035128.GB2800311%40rani.riverdale.lan.
