Return-Path: <clang-built-linux+bncBCKPFB7SXUERBQ5EVD3QKGQE5HRP4CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B671FCDC4
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:53:24 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id m65sf434663vke.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 05:53:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592398403; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRGhk2wwniL+frIe4lKMjBEmVsoyuqWmFRQ4J7O46zJh7umYOOymlgmeq7MPF+OEGh
         InyPLgBlw+Y//FbeJMp47FWKlGKqt1ppkKtAx3ds/F1VgolIntKRYc6fmproSDdHQAh7
         XDbrdQUwJHJU7afyBwsIBXTJlrMQ1xivFx2Q2Y2T5ypMDm/DVMYQxELxKNno/7ZF+UCw
         mVtc5PO+ZFxGb5VQfxGOz0seI39gcS7ljj94Lgdes0UERYigi4ufjW4xDnwa9quxTCoc
         tI07MUJ5+FgOUzsbHBpgs9t/cTTDzoz4rlu7gsPjCACZl1tnWftQYDg/28Ia6/ch6Ev+
         lRNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AZzu/qsc9QgGzwGuRae0j1h5a4a5hNAgHqia3KiL0Fw=;
        b=VtVoiU4FCJzpn+SWvgt2ShWKPr3Hg5t4m6RG4MABbaQLwQMR9eef6HdroVQU5Ujzxy
         KTQrRVfXrwjggmua2zzdZ4AKrMAUejjG/uHR45DMeHeTWjPCdJPxM0xRAXZSiKMoTy5Y
         /j1qQ4box9XBgDJ4d6dNp4/LH9U2Ge5pEzftM7JLdvtHhFv2GTPcqiJxTX1duGNtHeMJ
         iCFaW7inTivnSC9m18sZXfJiAiDok+MQYFdDyI+CZUuWKSTCzbFZTxYq4qoZIFrQ66VT
         dWc2VzsOmuOpY5mMQizm0rHwpYTx3cvzUAhmsUm8Z0lxhOJKE1k/omXx1JfyHtaAN/N5
         zxEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aP9UxHoO;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AZzu/qsc9QgGzwGuRae0j1h5a4a5hNAgHqia3KiL0Fw=;
        b=OsR1OnfHvRjeOxBHTzFD43kR1Df5fh0CyZDHigUk0r4iuXjlLkgYUBqjNVfZowIs2Q
         HoXsr1akJmqgA2A5LkiIxk5/4NzlgSkefOZ5deYqqDE5y9D6t8UFc304/dSFr5E4wPTu
         fW9H27hfqMmjjp/ZFXyvPFBTHGEtYrZwLB+njlmTPiC/QtTn+eYWkpja5Cn8UblngGRp
         5zEceH8eQcaG6fvShI6hwwuu/uJ2v1Vhu5aQBhmP1WaCAUoWgP1xrvJACdeCjsfRumLk
         dZUX+DaP33nzwyGzBC+/bKVifisUe3mJy5kFz2ETWExhNKKXu59B9ww37uiOelUGVQeS
         8pzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AZzu/qsc9QgGzwGuRae0j1h5a4a5hNAgHqia3KiL0Fw=;
        b=fNMwJBmtkL/HfiijvurBfe+qIVjkwAUJzMiLbmEe5O1/Q0StTkurJBu0jEredX2vWa
         8igc7dE0KwJOhRQdPA8YFCsowYno1xM777O6yQ5JJVhdzVzeniWGU7W/xBkFedccpgya
         GaaqXzPTDepNVQZpPPpZfb3hkipMTVkt6fyIaMOn5aILmrK88L7bjwgSfV0cjb9pSpeA
         hVSbFUt5sTBnRH0LepQPSPG7YjyqzRr/ToyjMEeTPVW6DQdGlm9f5GP9iUYPeGolozeh
         ZYUZGtFo00tLnvf7n0R+fWzrL9XvunhVnJ46Qe13iu+s/ibfvJ8MWjy7jYSDSGRfKMRY
         v7bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mibuGsQirKqqrAYLw72qAzHkDrS66aEkiJmjYIJzCSTyN2YRT
	9gexQCkiJiHZutsRjT+nqVw=
X-Google-Smtp-Source: ABdhPJwufd6hxSxrg7wvCsAhrGJYEkh7a3qOOELJJPN7luMhIi5Ti4+eSRWUqejGYYtN5xbU0RYDng==
X-Received: by 2002:ab0:5fca:: with SMTP id g10mr5730167uaj.138.1592398403411;
        Wed, 17 Jun 2020 05:53:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc16:: with SMTP id o22ls269606vsq.3.gmail; Wed, 17 Jun
 2020 05:53:23 -0700 (PDT)
X-Received: by 2002:a67:2ecc:: with SMTP id u195mr5656549vsu.32.1592398402940;
        Wed, 17 Jun 2020 05:53:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592398402; cv=none;
        d=google.com; s=arc-20160816;
        b=TfJ2G8kBN+6eGz4Q//XugTtIn2pN64XAiGU8L4WYwOvIyiSvVdc3pzKwOr2vc/JSo1
         BS/muIyXbvf56o2pY5OqSG+jP0N8QdlGVLHGXzhO5qLdUtI8ka/X5A5wFWn27NLJEP4S
         crBFrbVPX/4wUh5lhV/UGuT/Etzw644HL1zB3Aptdi/CFE+53UKxeby1fVDAv1BPvxh9
         Cst8LvG9S7OdGrHT0gXqyJ6LvPxrzeUQuktuaFedRJxCQBDu7swIDVUzjQDPvfHcC8+f
         vArtKQY4eLXHTr3cfVRDcUY8mnTfPhmOcLE06+R1IEeQiZa2JXtwy9K/sdgKldDyrCsd
         dIRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KxCeYadAkFpPRADG1byhTHsQXA/LoDiyjbaXWD8Erw8=;
        b=AFlnzA3NjYV0QkT1933+nSHtYihoxEqO007x9kYgnZ0YcBOkCJE1JNcIFXJepwXs99
         ZbChTUYuF8itveTXf6UWDhfH/81OSl3ZiGxabPFbxHVP/GX7h+q7Gll9KsmESrmUmJyg
         OsYpD5/D1h1+6NfCsJrhHmBhaXI929NmTWWFLCaMW5o8jFIxfDNqSlfxVgafLkcgkFvi
         Grds9lI6D9x0GlK4UXjlT4RD5UMgBix8tNf/Ce2p2iKAiUyKLHr6ImKd0GfqRfFh4yKp
         2ko60xLj5Ir39rVgNLYdPJPCPW/WOm7u0r7CVARJFXfflUHCQqeWLp2LK2XtHP4n8nmP
         ZjfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aP9UxHoO;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id v13si881366vsk.1.2020.06.17.05.53.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 05:53:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-tOj98EPZN2GPmvXFDqvOgA-1; Wed, 17 Jun 2020 08:53:14 -0400
X-MC-Unique: tOj98EPZN2GPmvXFDqvOgA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47F511010888;
	Wed, 17 Jun 2020 12:53:13 +0000 (UTC)
Received: from localhost (ovpn-12-37.pek2.redhat.com [10.72.12.37])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 755175D9E4;
	Wed, 17 Jun 2020 12:53:07 +0000 (UTC)
Date: Wed, 17 Jun 2020 20:53:04 +0800
From: Baoquan He <bhe@redhat.com>
To: Vijay Balakrishna <vijayb@linux.microsoft.com>,
	akpm@linux-foundation.org
Cc: Dave Young <dyoung@redhat.com>, clang-built-linux@googlegroups.com,
	Tyler Hicks <tyhicks@linux.microsoft.com>,
	kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
	Vivek Goyal <vgoyal@redhat.com>
Subject: Re: [PATCH v2][RFC] kdump: append kernel build-id string to
 VMCOREINFO
Message-ID: <20200617125304.GR20367@MiWiFi-R3L-srv>
References: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aP9UxHoO;
       spf=pass (google.com: domain of bhe@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 06/10/20 at 09:27pm, Vijay Balakrishna wrote:
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

Looks good to me, thanks.

Acked-by: Baoquan He <bhe@redhat.com>

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
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617125304.GR20367%40MiWiFi-R3L-srv.
