Return-Path: <clang-built-linux+bncBCT4XGV33UIBBXHFVH3QKGQEE5MWSJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8521FD587
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 21:45:34 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id x63sf2295377ilk.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 12:45:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592423133; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+TVT4Csj5QLqJnOa0hn1c+86Q1F0fJPzg7yea7V5yoI4YjWkTue2QOM40y1Dg4/gG
         jdkgOpJ/vbyecqFRH9hAVrsh9uYOnV9EVfzWO82EospcdCBFipPPwDgnOMAQcsGfs+TQ
         YXRq10+DcmOzC4OvKs0qGN6u65bETCxbvTtlu9hW1rksUy1Dv5mYvlqnkv5vn1HqZiP3
         DgQLKeZ/SB6mWdYrVQ+p64EYKawTEIAzZYmQEU5RyU0J44vPkCq2eMYt9hFPMVgEtylf
         M7KRzmpZPGsJlHu8THgd7QLlcPE1GGCvE7X6gmU7BvUmDx6vB0e8iGh7hZ9F7tm5WSAW
         qavQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ZqX8UNq5ep0ekh9PL2fjImhzKu2rwhU/i9jBdq03pYk=;
        b=yXD6uX0OTOpFrOm+Ay+aj0q/RDN3u0cJlEjqOofIXMSd4GvSplnpmvYG3RcYOtAWQo
         uIZcO9UIEDmEha8S0eWcc4vlF4rDYfXlYt3Ipgr3GlStWc1a4ntXlReWae/DNEgPGdDQ
         EF8IpHLZlD5m15kqa0qzhpuhjcF3c/EPC9FeBYlc5UWYzQps0pchjJgJ9aridz97EcPJ
         UMfYhr0VvxwAkKFhFpXrLlayjqNJVVrcGuO9n4U0VKGTMTTHjAizz2kF5cU9kpe7mvTo
         vkUZ4l1W1iZ4apOHTSdSrD07jf9CmeHAWHkms1pdoBjIc2XQjGr+3JlD8ceH9OoUjiDc
         LGHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vWuJpvkS;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZqX8UNq5ep0ekh9PL2fjImhzKu2rwhU/i9jBdq03pYk=;
        b=kuQh1kqPUsWieLU5R9QK/PSUczoC9u/gK9OVGB25JvPC+vw/6usBLAkMsHecy5d2Qc
         YZ3yVAwugtAEmYdT5TvIO7R6X/ugYb6bvzh/RIPpSicfLp8enPZIR7k1dUZNvmuCE+RR
         5SbgRQlVmFJf3u69PSuaW5GhvlyCHyqb6e39YX02Vvc1PPfAP8EsrYa+C9/qqHPnsUnM
         b0sEuU588WwScvSZHYJq9ItQgCOzPkMM6Q+q0pBRm8DHQ/bSuzclUzxY/dwaTuRwEJOG
         LiJ27eKhwfj2kYOkIwuz01zuZxfX8V1mR+hXdU5nrQmALWuoz1ptSWJVHBn/zCxLXQyZ
         b14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZqX8UNq5ep0ekh9PL2fjImhzKu2rwhU/i9jBdq03pYk=;
        b=TilkwFYN4gSh+gMBCg/6UuG0MY/v0WIzM6656hIAb0LRHMqPX1EAOgiK+S7aua/UhR
         RxZXK+xS9miODjZm/uiUtquF99gn3TgyQa7OltptQeieQMdqpLGVy2zjyXIQlvoh5AKH
         G3IqkHsAekx1hstsPn6JydijXnsbmSxAkW7qSdl/02PnM4Vb/gxd6MoOesQIexaZZcaq
         7cpCp1JHnJTaVXvwCqiwSxsNUOYHu/1ZaGKecua3D/hkTEMP98fziuSQ3vxZ9+lMEDZd
         o424d/72hq87+F+5+mseOxl7eT66+uwW7xM93lKMWlgGyswEulwqtTfpuPMzoXRWWlE0
         D5iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bW1L0y3IlRFINkJaLSmhWL0OY+wNf5gm+cddqTKcpyi3tmNl2
	gMcH+YHN/USASFtjZ6FqmMs=
X-Google-Smtp-Source: ABdhPJxjIcUN0a7kZgr+HrngWABDTy2/e4WBFt18cxUTgp7JqvTw+a7D9bz6yWqDRzYdMni+HWAPQQ==
X-Received: by 2002:a05:6638:d89:: with SMTP id l9mr865117jaj.139.1592423133070;
        Wed, 17 Jun 2020 12:45:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d28a:: with SMTP id p10ls959655ilp.5.gmail; Wed, 17 Jun
 2020 12:45:32 -0700 (PDT)
X-Received: by 2002:a92:9603:: with SMTP id g3mr564523ilh.204.1592423132638;
        Wed, 17 Jun 2020 12:45:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592423132; cv=none;
        d=google.com; s=arc-20160816;
        b=otTMvOJzG6nqVX/DwP/x5DJfRcwlguX7YgaLlY0vqbqr1A7b1PFzGyGiAWlDSNZCvT
         vnQ1snttZPts4NijuAIkOy2KTXy8vLrV02h2BPxx+5Mk3zECOxPl9ta5YSctTTEEL+dU
         G1RFkKi1d6cV81lW6354+IDJdRq7U9wooPTTGBAsWLqqNFhrOKb+xxErPSieRLoAHWKm
         4l9c3DlVPDKZFwNbPPpVCjdBZjp98Ff24zIbCnnpqJA3fnWrSSwDOcs3El5JDHyqzY4h
         vmNARhUkAebpm9Zc/a/rz35F2DHRvt3o38xsTCGmn8Ajn+fevGaaw6YicRFliIFgdFo+
         Jylw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qADYA2qj90jik85EOfe0wcbi2OTtYq5pESPP/YDUUA8=;
        b=pcJzJtdlLoI+4qBs5mLTFIkNK1mBkmyp39OkHmWs9eKUtoP1J1zmaUio570Khm5w3J
         D7/sBrW2g2TuHqLGrkw/TC67y/eWid7zcChAAd9iFORC9G5UpTlZlqeRXO3kEXpZd1h1
         w+KRQnIMAehRomWpIBNE9iA0zj5D6pwHlUqEKo0QXBsClAls/EWwurfzSp2/sHS4N9At
         mNhtc7N+vxO8lfqMuwHcAD5n4dhy5cdy2vkuK/Uo4nV9HfLoaiwbExAJaq3F4YyiwaZ1
         c7AxnLpx53PGj/TUxJeSG6N0YhsT1zyZjM4Q4/iHYF9HamDB7CG1BWlyiQCc1TzUugz8
         W4kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vWuJpvkS;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si46888iow.4.2020.06.17.12.45.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 12:45:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A9646207DD;
	Wed, 17 Jun 2020 19:45:31 +0000 (UTC)
Date: Wed, 17 Jun 2020 12:45:31 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Vijay Balakrishna <vijayb@linux.microsoft.com>
Cc: Dave Young <dyoung@redhat.com>, Baoquan He <bhe@redhat.com>, Vivek Goyal
 <vgoyal@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Tyler
 Hicks <tyhicks@linux.microsoft.com>
Subject: Re: [PATCH v2][RFC] kdump: append kernel build-id string to
 VMCOREINFO
Message-Id: <20200617124531.753b42152682219f267b75a1@linux-foundation.org>
In-Reply-To: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
References: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vWuJpvkS;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 10 Jun 2020 21:27:52 -0700 Vijay Balakrishna <vijayb@linux.microsoft.com> wrote:

> Make kernel GNU build-id available in VMCOREINFO.  Having
> build-id in VMCOREINFO facilitates presenting appropriate kernel
> namelist image with debug information file to kernel crash dump
> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
> key for crash analysis automation.
> 
> Regarding if this patch is necessary or matching of linux_banner
> and OSRELEASE in VMCOREINFO employed by crash(8) meets the
> need -- IMO, build-id approach more foolproof, in most instances it
> is a cryptographic hash generated using internal code/ELF bits unlike
> kernel version string upon which linux_banner is based that is
> external to the code.  I feel each is intended for a different purpose.
> Also OSRELEASE is not suitable when two different kernel builds
> from same version with different features enabled.
> 
> Currently for most linux (and non-linux) systems build-id can be
> extracted using standard methods for file types such as user mode crash
> dumps, shared libraries, loadable kernel modules etc.,  This is an
> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
> some uniformity for automation tools.
> 
> ...
>
> --- a/kernel/crash_core.c
> +++ b/kernel/crash_core.c
> @@ -11,6 +11,8 @@
>  #include <asm/page.h>
>  #include <asm/sections.h>
>  
> +#include <crypto/sha.h>
> +
>  /* vmcoreinfo stuff */
>  unsigned char *vmcoreinfo_data;
>  size_t vmcoreinfo_size;
> @@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
>  }
>  EXPORT_SYMBOL(paddr_vmcoreinfo_note);
>  
> +#define NOTES_SIZE (&__stop_notes - &__start_notes)
> +#define BUILD_ID_MAX SHA1_DIGEST_SIZE
> +#define NT_GNU_BUILD_ID 3
> +
> +struct elf_note_section {
> +	struct elf_note	n_hdr;
> +	u8 n_data[];
> +};
> +
> +/*
> + * Add build ID from .notes section as generated by the GNU ld(1)
> + * or LLVM lld(1) --build-id option.
> + */
> +static void add_build_id_vmcoreinfo(void)
> +{
> +	char build_id[BUILD_ID_MAX * 2 + 1];
> +	int n_remain = NOTES_SIZE;
> +
> +	while (n_remain >= sizeof(struct elf_note)) {
> +		const struct elf_note_section *note_sec =
> +			&__start_notes + NOTES_SIZE - n_remain;
> +		const u32 n_namesz = note_sec->n_hdr.n_namesz;
> +
> +		if (note_sec->n_hdr.n_type == NT_GNU_BUILD_ID &&
> +		    n_namesz != 0 &&
> +		    !strcmp((char *)&note_sec->n_data[0], "GNU")) {

Is it guaranteed that n_data[] is null-terminated?

> +			if (note_sec->n_hdr.n_descsz <= BUILD_ID_MAX) {
> +				const u32 n_descsz = note_sec->n_hdr.n_descsz;
> +				const u8 *s = &note_sec->n_data[n_namesz];
> +
> +				s = PTR_ALIGN(s, 4);
> +				bin2hex(build_id, s, n_descsz);
> +				build_id[2 * n_descsz] = '\0';
> +				VMCOREINFO_BUILD_ID(build_id);
> +				return;
> +			}
> +			pr_warn("Build ID is too large to include in vmcoreinfo: %u > %u\n",
> +				note_sec->n_hdr.n_descsz,
> +				BUILD_ID_MAX);
> +			return;
> +		}
> +		n_remain -= sizeof(struct elf_note) +
> +			ALIGN(note_sec->n_hdr.n_namesz, 4) +
> +			ALIGN(note_sec->n_hdr.n_descsz, 4);
> +	}
> +}
> +
>  static int __init crash_save_vmcoreinfo_init(void)
>  {
>  	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617124531.753b42152682219f267b75a1%40linux-foundation.org.
