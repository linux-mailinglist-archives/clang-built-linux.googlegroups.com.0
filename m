Return-Path: <clang-built-linux+bncBAABBX77UP3QKGQESH6EQMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CC71FBCB9
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 19:22:40 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 16sf17328563qka.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 10:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592328159; cv=pass;
        d=google.com; s=arc-20160816;
        b=GwhykHGq9f6KooKOPtcVGATRycXJmwCAQxxqRrJ0n4m6fJ4DJ6pD/NxdD9Tzlh+Zd4
         r7Ga4C1/SavTnH1hQjacEODzl8EvBITQ7o8ZNQD1/jt03+4CfBw9pppWRrrwfeqFg7Zt
         gs99oGE+aP7Ywutvwl82/hODdG8+K0iMK54/V2Mjq2ZfU1csvaz6mE4YOlOWz/rPju5R
         CYoBJ4uV287Clnn2i3GoqGE9muxRsrgu6fcOX1tDoSo3/t2Yd0xtCn7nJf0D2bIL9L2h
         1YdCCRVN99nZShqnDXQPtajmSokf7HGvq7nhQeZPZjAvEamuJ48KbtEFdjyV+zbpFDY2
         fxjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:sender:dkim-signature;
        bh=Zv7s4Ic6A4z8ZtH6kwP+3CYRmtXx7VrezUhQqUGTy9w=;
        b=maTJDXXoXDoUcqEg8bYVMHDqMPnNhfDkWLfEsRaVEYo3RVhRHozJ3oU8uxwM3VRmR/
         ZzIzFn9HACOV9p7QkEqWnKgppw997p7EcNcdmWvQec7V7Xe1w2YmK+Rc35MjK44/L6hs
         MsdD4UjXZ243dNdVB8jSuWgbhMoB+FtmW6xAIRg1wQr6E2ZeJcCBdmvg55VK0p2ZCtIy
         fIhpA2CGrL8KWr5/CJrYvLIz5Fy+xGmNCvmvCl+0ZYQaeRnTulWwYRWxxWGMoC+ecfcf
         1iy1FsNnZmi5GM7tFgD/m3xSNIz3fOkWXoFCyioBJFh8qcK3uCc0z5lQYfbQhmKaAyX8
         Xkkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=CuUemv0O;
       spf=pass (google.com: domain of tyhicks@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=tyhicks@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zv7s4Ic6A4z8ZtH6kwP+3CYRmtXx7VrezUhQqUGTy9w=;
        b=SC+9VDGvrSCVLgn5WnOX5+8216sFJy3WmoIlyD4E2wwrqmrNCe4TqnJZm9oUOwxYPo
         tYEIKxXqbZWkPxjrJc5L99vB7e2DJYZtO0JM6RCeAQDQTpPh0cTnZWxU0/beJ0BAp9o4
         bHI5ir3ctFV/LarO4BF50cTM6gUNkepDB2fgtCFMaIYhb8KooTxrh/O6EL67ZOQdRJDI
         snBUtBztWgAgS3p1HxsOv8PhEerU3Uspc4iRsmAfl5AgdyBiJ0JFoSGz64Ss8aTO6H9E
         oREa9wEz+NPZiWGLbBHg7mTJYGDjTkUyrmXxrxR5qA9i4a6YF275EOcWQvmMX59GKKL3
         /O5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:to:cc:subject
         :message-id:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zv7s4Ic6A4z8ZtH6kwP+3CYRmtXx7VrezUhQqUGTy9w=;
        b=g8M2ioMk4sJtt2UzD7IDkLkgghzGKL4qqLgGWw/GMZQKkv0mebSnktFv2bHgdMCMr7
         A/ocECt63EU2axhlrnE6RwK1RFRbCcpwt82LWi2D1xlFaQZvh8a7IDc8UFw07pnpBTW4
         nqBUD6718YrI+h7BNDxNaFdzO/nwA8vrODlYS2pno+6rrNEspM9x0/Yx+eIAPW/zSwGC
         5nYTD42ZeGj0EDhTTHCCuyCIx8aFNSwmkvDmhU3n9eJtnqJVLaCYrYPMdkupVvfvHI8O
         8OCaRP5ZPT1kBFdvMVeb+fyqoC/SeOPJA1HBtDti3fu7oP84ZDlvfoJALXmFT9lOTN+k
         mj/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mtcpfJIR5Q/HQvhQMlFQQabnhg3LQell28gfJQV+xF3BCWfA/
	nh4KCuFgO8WbSg+RCe6YdTE=
X-Google-Smtp-Source: ABdhPJxxTlPsMIVdpEp9I9hq0/8uvSa0lU4iLJOaqJtqCXHVUDAV0it0u3NPVJgfceE/RzSDmwt73g==
X-Received: by 2002:a37:674d:: with SMTP id b74mr21698503qkc.108.1592328159184;
        Tue, 16 Jun 2020 10:22:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3384:: with SMTP id v4ls7054730qtd.6.gmail; Tue, 16 Jun
 2020 10:22:38 -0700 (PDT)
X-Received: by 2002:ac8:1308:: with SMTP id e8mr22781469qtj.24.1592328158892;
        Tue, 16 Jun 2020 10:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592328158; cv=none;
        d=google.com; s=arc-20160816;
        b=xyDrmUZ4zWk7f9CQoNQgpJhnksWBN3+8cFOi2JKzOI6xLpoKeiF8DmUNTDy3Sho+GL
         MNDm9SQlzrXe/7uEoar4DNbNAIlKzWwgm0BCS3PE9GDz86XYRpqYjTlIqacTkTa6hZC4
         MFNCXTS8g6HlWy94qRH4UnmG2gY8QaoEtDOsFN0zkdTifTyTHv5NzBStNfQ3/G66OF8Q
         h9bWTUmx5kTYPft8Fmsi6aVUT/m9iyGYnc7vaDWkY6P2hzCh9+u1/LKTDK+F3QGAQj4i
         +1czI68tmfk/RSEnpG0N9Tp+pFrou9AIF3IwwxGYfA7oRwVykgvYbF+6hkdmufJQlQuz
         qoYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-filter;
        bh=Va/z/RCQjkwx4GMOEW6jvTREyv5bVvF1H/LITP0NJyY=;
        b=p/QVf8/weo5j94q2me7S6CSg3QB138CH2Bb1HUNFX71YQ/1Vo3Tb94FM2wPQzZ90SF
         d1Umu2ZRHhvA24MsDz3re+k6h7H0Y39kU9APZ+DUtncvVlJdbTb9+iOrVK59NC+UiCR8
         6Z8mOGNgYsB8Pdupm8oi83D6o7yUpkzzJPHsrZDBEiNH1qr0H32uNa5gKK0WgY3/oO8e
         2m+JW0pdXKcom5/bAHtkwtLZ8g4PX0AXyFywtRbp9uR2klW/witTNSZdL+geF04R7OUj
         9wdtnCVsNokjzEyF8E4B02JCtIPWmC88YNmF3BnFhZ7/xr7bpTiZz1GApqrd1BYolMlV
         sWqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=CuUemv0O;
       spf=pass (google.com: domain of tyhicks@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=tyhicks@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id v199si1157660qka.5.2020.06.16.10.22.38
        for <clang-built-linux@googlegroups.com>;
        Tue, 16 Jun 2020 10:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of tyhicks@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
	by linux.microsoft.com (Postfix) with ESMTPSA id 8467D20B4780;
	Tue, 16 Jun 2020 10:22:37 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8467D20B4780
Date: Tue, 16 Jun 2020 12:22:35 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Vijay Balakrishna <vijayb@linux.microsoft.com>
Cc: Dave Young <dyoung@redhat.com>, Baoquan He <bhe@redhat.com>,
	Vivek Goyal <vgoyal@redhat.com>, kexec@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2][RFC] kdump: append kernel build-id string to
 VMCOREINFO
Message-ID: <20200616172235.GB1409697@sequoia>
References: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
X-Original-Sender: tyhicks@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=CuUemv0O;
       spf=pass (google.com: domain of tyhicks@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=tyhicks@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On 2020-06-10 21:27:52, Vijay Balakrishna wrote:
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
> Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>

I think this is a nice improvement over today's linux_banner approach
for correlating vmlinux to a kernel dump.

The elf notes parsing in this patch lines up with what is described in
in the "Notes (Nhdr)" section of the elf(5) man page.

BUILD_ID_MAX is sufficient to hold a sha1 build-id, which is the default
build-id type today in GNU ld(2). It is also sufficient to hold the
"fast" build-id, which is the default build-id type today in LLVM
lld(2).

Therefore,

 Reviewed-by: Tyler Hicks <tyhicks@linux.microsoft.com>

Thanks!

Tyler

> ---
> Changes since v2:
> -----------------
> - v1 was sent out as a single patch which can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2020-June/025202.html
> - moved justification to commit commit log
> - renamed 'g_build_id' to 'note_sec'
> - fixed format specifier in pr_warn() from '%lu' to '%u' (failed to
>   catch warning in v1)
> 
>  include/linux/crash_core.h |  6 +++++
>  kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 56 insertions(+)
> 
> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
> index 525510a9f965..6594dbc34a37 100644
> --- a/include/linux/crash_core.h
> +++ b/include/linux/crash_core.h
> @@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
>  
>  #define VMCOREINFO_OSRELEASE(value) \
>  	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
> +#define VMCOREINFO_BUILD_ID(value) \
> +	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
>  #define VMCOREINFO_PAGESIZE(value) \
>  	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
>  #define VMCOREINFO_SYMBOL(name) \
> @@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
>  extern size_t vmcoreinfo_size;
>  extern u32 *vmcoreinfo_note;
>  
> +/* raw contents of kernel .notes section */
> +extern const void __start_notes __weak;
> +extern const void __stop_notes __weak;
> +
>  Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>  			  void *data, size_t data_len);
>  void final_note(Elf_Word *buf);
> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> index 9f1557b98468..64ac359cd17e 100644
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
> @@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
>  	}
>  
>  	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
> +	add_build_id_vmcoreinfo();
>  	VMCOREINFO_PAGESIZE(PAGE_SIZE);
>  
>  	VMCOREINFO_SYMBOL(init_uts_ns);
> -- 
> 2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616172235.GB1409697%40sequoia.
