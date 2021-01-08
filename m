Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW4U4P7QKGQEWGLIBUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4882EF9FA
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:10:52 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id z51sf5606649otb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:10:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140251; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlosdSnoKNIuk+6i0dYkGTbrir9RkTMMzY3xsYJZYmVQOXDiB8y3GKIpKuCsIrkK6o
         UlITeU8JkkM5wWMdzgo5ESC6Espwv3+x3l9z9RCDN+tR1j/UfQzQFGiALD4H1B+l3o/W
         SuhqhUOKkH9WvQ+RK22ycFVQ1db/F+6ukFZdGlslfrWSKU/n4HRAzSbR5eIK+7vcxD1S
         CcP0+gzOPqZGBeEYuehEV/S+chHGmelpK//cCyx9qJxg+5o+e6W7uxQZdTdfXOFb/GHv
         bvJFCcgTYMgjVr8Cag8tuchXUhRMyoR2xb9JBJHbZGW+WlQGmZ4kFrjtQM75aOVcOSC0
         woPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=HfndbFraruE3FAl3Wwxob4SWxLRw7sYRbHpEkPr25pw=;
        b=K/5v3/y1xgjz0aUVk0N7h1mrwOcgQM0f9zxHp/HgWVmBpsC3LlHPnNrPUter75vk9y
         jcJ5BdAqdiotzFQPN2zoyB76ldgt8BShiZBwb9NCQRfkYCjQNwDb653LBg2+08j1QnUY
         voHjrwE7+RiokvXrZW/rCBCiBOoU2FcUVq3U4+uVsauodgIFv/Rew3rctsPwzuvcf7r9
         qSJja7MYWUsZoCTp19PbETfZqDukNj/qLN3Zsrowg+k8ov+6Z+YmeFQVc3gfF/SOfXMe
         /ewj4brIM3f/uSWdjVzNZUrveAqrrkLyZQkrK/FvNoseKn/F6lGmgkxXfT5WtOzwKh8b
         wPhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jsZr5xv1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HfndbFraruE3FAl3Wwxob4SWxLRw7sYRbHpEkPr25pw=;
        b=KNSLeGNDbRHz0zEahkI+SijNSZU64cZGzPfz8QEQG21jbmD89SvwvYeIc2Trw9VaJP
         0v5fK0zAPyYYqsIpvODldshSrUkO6VIwNOzizCrbvSoTHTSCd7tfXVlHNHFq1k+hRZDa
         yEN+Z9W9UZ9mH6ICgCaow0Z+RQNZPpompDNV7y4KladwkfYaQQjGPDKvQgGzLRnr5O+9
         hKhv9Za4kPIZ1fwyg77yRXasP/9lg+YsAJpI9nvGIoWOMwlXp8gY/Y+wASC+n2IrHYQC
         goYFLBtUntVJm86nuvSRxv39fSge9zRrKTjQuh/G5Rr73kLC2eT7HgH0xYUHtgjI+sKh
         BPkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HfndbFraruE3FAl3Wwxob4SWxLRw7sYRbHpEkPr25pw=;
        b=efp90xAk+p1JMOujWXYTE7i5QX/R40tcbiCpk38wB5x25COHFKkI8ax1f2ez/3ncQ9
         y/EUqq1hVJHhAtZYBHsjI0zLPnGK8HqJAwUb23DMeL6k79gvRGwr88rY/PIzulqnjbQr
         0gBiyXkT/ihWkA4onuGzONHWjAl9PH3461JbCmKypJFSluJGL7nXBycPyKhHAfnMQL+D
         ksWq8XVQaB14EtqJrm4KSy8vStlWBEWWwTb1kgFWdwu3mOj6Dj8DwkOOr1uUKEVFLCsY
         LJcNG9OKT0DQi+1lBq1LBJBtITcIyx/XQfqjGQs714/pW34KeJdzpEhxKbSgRIxIh9MD
         Y2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HfndbFraruE3FAl3Wwxob4SWxLRw7sYRbHpEkPr25pw=;
        b=rHlIJrURbXgyNJ6kmgKYUUhX4HefuZ5ryTCD1rbiVU1WXRjyqFRGvHcBuvfeznAdNC
         OjpHUdLkGwW4UuJYxiOBcwz9rijMPcf/VGVwGWDkHGPrD3jcGuqggnaIOMA8sz1Ewpv1
         OmTwHV1OX2WnYR7Ix0EzaONSEP/UhEvaV79jZ1LOIDzF7lzAQW0tT1+WXectvOqBQaoE
         K8bxuHJKZ8Jl18aQ+r8UBzmRf9b4hD2gfu4DFoHORbF5AFrfacDI/b8FHYMTH4vaZTxY
         qHYlRQuY0rpQqKRgLjS71WUEJ4qr8ssVyYetC3aH2Kdcmd3U/4GlQhxkVhAc+48MjbBH
         bJvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m6ehXcQb+zt0SJxjZO1/Prsw3o1aYGgcpyewRkFlfUlYanas9
	cEGnt0tIubAGBRz7Kr1pWZ0=
X-Google-Smtp-Source: ABdhPJy7pm2dJb091yimLxXxzfPfG61fBAjRNoPFwGa1v3AkCILhkZL8NDIRceTP6DdiefRlfByXsA==
X-Received: by 2002:aca:6089:: with SMTP id u131mr3512361oib.84.1610140251302;
        Fri, 08 Jan 2021 13:10:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60cc:: with SMTP id b12ls3326516otk.0.gmail; Fri, 08 Jan
 2021 13:10:51 -0800 (PST)
X-Received: by 2002:a9d:1d41:: with SMTP id m59mr3900418otm.100.1610140250933;
        Fri, 08 Jan 2021 13:10:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140250; cv=none;
        d=google.com; s=arc-20160816;
        b=fyfyG0erb1p3MuDsr9tAWimwtT9YkRy2BNEYJ75bgHScKeayR8kduwpytsVDgrJtan
         YtgOIQrq05VGbfQWz5JcIUNJyK9yKoTMLjMQOH614rTZzKdnI9aYE/Aj15SlzR3esZvv
         T6KGrfssJ8Kqu8632D47Wmv0bdzVCyVr5VewBiddboxzRHWh9CIssrmy2HDb4M3Nygpe
         9+KrPeZ6WZBXXOnYaiXsIzGuuNSjldH2ZQ65jPn3JhRK8jTmmhE2EuUEphvCMlJcJapA
         oC20+ZCHw5+PhSDGwLySozCymkPRdiTd8aFKbQnh5LZmDBJtwMffWRi3vVaffMt/CNUM
         T2og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3JRySsR0y1lPgH/q9MB+jQS3iEkJKrJjNV+INCLiO5I=;
        b=qQrb8oVBwZRba/os5XcTDZoXOu7QbUEnC0rIX1T7wScUxqfJbgGJ145JGySvrkWBfQ
         Rqplqs1fYRpmzIfiiIm4ouTrE3rAtRoCOpElqtBMLVaOOos/9pD6kvjNiH2wm3ChbiDM
         rcn3lhbQ9r1egdzL8+mQv/I3d3Fwta7wWXMYBDqxRUqPINL5EyhuhoZMxuRM+4dzHQai
         LeNs3hRD9fv2ejUXuocxw71nzR6e4qLM0F1xwwHLwsoMYIwmXvzeZ0r1hvkBNRrLMTEx
         b7qp3YFwdR64nrH8DDmtq6mCwakVP5rHBJTEUDWfkG00OEAOn6OD9rDPZnVsBkUonLlM
         sgLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jsZr5xv1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id 7si887476otq.5.2021.01.08.13.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:10:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Received: by mail-qt1-x82d.google.com with SMTP id a6so7554266qtw.6
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:10:50 -0800 (PST)
X-Received: by 2002:ac8:72c1:: with SMTP id o1mr2813356qtp.35.1610140250520;
        Fri, 08 Jan 2021 13:10:50 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id s186sm5517909qka.98.2021.01.08.13.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:10:49 -0800 (PST)
Date: Fri, 8 Jan 2021 14:10:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 1/7] MIPS: vmlinux.lds.S: add missing
 PAGE_ALIGNED_DATA() section
Message-ID: <20210108211048.GA2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107123428.354231-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107123428.354231-1-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jsZr5xv1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 07, 2021 at 12:34:47PM +0000, Alexander Lobakin wrote:
> MIPS uses its own declaration of rwdata, and thus it should be kept
> in sync with the asm-generic one. Currently PAGE_ALIGNED_DATA() is
> missing from the linker script, which emits the following ld
> warnings:
> 
> mips-alpine-linux-musl-ld: warning: orphan section
> `.data..page_aligned' from `arch/mips/kernel/vdso.o' being placed
> in section `.data..page_aligned'
> mips-alpine-linux-musl-ld: warning: orphan section
> `.data..page_aligned' from `arch/mips/vdso/vdso-image.o' being placed
> in section `.data..page_aligned'
> 
> Add the necessary declaration, so the mentioned structures will be
> placed in vmlinux as intended:
> 
> ffffffff80630580 D __end_once
> ffffffff80630580 D __start___dyndbg
> ffffffff80630580 D __start_once
> ffffffff80630580 D __stop___dyndbg
> ffffffff80634000 d mips_vdso_data
> ffffffff80638000 d vdso_data
> ffffffff80638580 D _gp
> ffffffff8063c000 T __init_begin
> ffffffff8063c000 D _edata
> ffffffff8063c000 T _sinittext
> 
> ->
> 
> ffffffff805a4000 D __end_init_task
> ffffffff805a4000 D __nosave_begin
> ffffffff805a4000 D __nosave_end
> ffffffff805a4000 d mips_vdso_data
> ffffffff805a8000 d vdso_data
> ffffffff805ac000 D mmlist_lock
> ffffffff805ac080 D tasklist_lock
> 
> Fixes: ebb5e78cc634 ("MIPS: Initial implementation of a VDSO")
> Cc: stable@vger.kernel.org # 4.4+
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/kernel/vmlinux.lds.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index 5e97e9d02f98..83e27a181206 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -90,6 +90,7 @@ SECTIONS
>  
>  		INIT_TASK_DATA(THREAD_SIZE)
>  		NOSAVE_DATA
> +		PAGE_ALIGNED_DATA(PAGE_SIZE)
>  		CACHELINE_ALIGNED_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
>  		READ_MOSTLY_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
>  		DATA_DATA
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211048.GA2547542%40ubuntu-m3-large-x86.
