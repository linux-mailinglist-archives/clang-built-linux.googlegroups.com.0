Return-Path: <clang-built-linux+bncBDXO746SYYBRBY5HWL6AKGQEFKSN25Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C5F291936
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 21:13:41 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id 140sf5081960iou.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 12:13:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048420; cv=pass;
        d=google.com; s=arc-20160816;
        b=O6PlE3q6NT1M22A8+HszIoVzq5OCXWaye1FwJ1j9aEuqJyUc5/rjeW9VkLzYsk/o5d
         nc2UeIBde35x2cHEPzSXtb4u0UeMJr0L/jic56SXKqtZVnv2fApRWJcyKelFwmeRE2/3
         STuaKjb6KXhRcP9zWKbvf1qHIw76n0aS7PfO6Ow54V5GCGXTa8IPV59AkswEpPDUVQNe
         oQF768zqTCvGusoVAFYduoARu8Dkl0DdIbYngp/5ESiVBG/B5FLZflN8gAslC+ocuZO5
         TVa7CZapBSiay+FU6DEC2fK9r2M7xkHNGDxDi9xtVFYO0xrvggSdaZZRzdC7uuRg7Oqo
         aKRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=1o9QUzDLWN45v6yvz0afkaebXRqCxtkyI0k/1LnOPao=;
        b=s86talcIkPBdJZf8mdUhNS8alivzIY7uiJZEdsx4kPjpS0gNwiiwfljB2i3JrE9D3m
         VG9RrzRz4jmtTVscxOlP7FQIc5FTKyA2yxHgFSbbj9Csg4VtgKptFfROTHk36wMlxi1h
         NLkvKzqbSe6J5KiBgot/a/auswlWmn3wU4/nCmnuB3KrljKnMcVZQ2Nc+031enO3tjwo
         P2+ITja9d3kiAHYl+xk6GzWZMP0zY1m4RUMlbHZy45+kzErE7tBHFUha+bRv1Yz62WS8
         pQbl7EjYqJvvdzr3VdhL0z1YGkDTRH3qyVX1tJ0SSDXVZnl4xgrxFQkYCOGzRM8BnDgj
         RF6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1o9QUzDLWN45v6yvz0afkaebXRqCxtkyI0k/1LnOPao=;
        b=qr44J4CwChMeoKvOKltL/VmJLNOpU6XDTFT1orZ1iJgwc1mxMN0QVX7e6TPm46oXuY
         h6QYLZj+T8DTlmf6t4+cdtdlS5tkS9yoQ63BP2h/JQ+SzK6R5/KbHC61NnNuG5EFbuot
         Z0IGJahXedWwh/Y4CEzQescUaZc9F5eCyR8TDF1B2atCiBM6uq/yjF00tTlX+53CIc0O
         ZVC9KXBlLbFoIEARNvEFrdNRanKhRmS/7be6IqRK9GDlkyWAPe9olFTVCxk4QbzXYF9u
         N+GmM8dGBq255r+mXQlX7aFYDnpCbZRJ1z7pE74Ry5CAVxTAjnhywKJjW48ix0URblcw
         BHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1o9QUzDLWN45v6yvz0afkaebXRqCxtkyI0k/1LnOPao=;
        b=svN0N2ugu1oaYgXVqhtRjg2qD3F3mp3Q1P1KeWMa9GY9bPNdzrG5nPEzZAdbKJfpfO
         s4JeocAgpOUfLqz8B54Obt/4xWwPZTxuBLUEVME229gSK/A1vgvj+S+NjobRhIooJD+w
         DSazEny2m+4ViU/ZjoithO7TbMhquqChb9RUWsMxnsDTTlw4lTPEtEfBWBrU6i7mor45
         vvr0mxzfu8yakCBLOuUjEhhlMr3RuZHhU75A5SJ0QBgJ/CYB4XlPmmaIf1ZkW2bw5/T6
         +ISWEKSPuv29MUJh6cioOAuMGFNtKpybZUp0mOCbZirJ8zdphysS7ppI53JfHdQ0pUxQ
         UuiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eKsGApPXFQrExTjr1kufmsk47jWTig92CMlTb1GHYMQpY5F8/
	RG8NOVJ1p1tHunHhu8CrVfg=
X-Google-Smtp-Source: ABdhPJw+Z+IQxavJB+t2iFLD5RdU08w8WhlREvP8PCX9YFAulj3AtNhrqohGdWthSNsFXqMM5HGptA==
X-Received: by 2002:a05:6e02:d83:: with SMTP id i3mr8264844ilj.221.1603048420026;
        Sun, 18 Oct 2020 12:13:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1805:: with SMTP id t5ls1038587ioh.0.gmail; Sun, 18
 Oct 2020 12:13:39 -0700 (PDT)
X-Received: by 2002:a6b:780b:: with SMTP id j11mr8490096iom.5.1603048419642;
        Sun, 18 Oct 2020 12:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048419; cv=none;
        d=google.com; s=arc-20160816;
        b=hn8kG7FvypTcXQuyvqyiRrgOpT2tqu4JLPSI7u3pEQID5quvW3nYvQs7dKR/ZcQq5Z
         yKO8OArgM0E3QvcsUJEEIEs+7xMGddi5geKpoCz5kMBUw4nYw8W9ZJ+pCTW72NraYzg0
         ZVnvyG8QIEy1+AQ0nQqXbu+yCKc+AYzWI4FG1IU19VxnhwBB2t1h+XYGBzuLzCtG1tpk
         hirGvCg05btsPRVxGEHxI80OiUiNDyxKC2Xt1tnyPc6ONhXAN9x6rR+TUJd5cmE716pr
         CgLdv7UBV1DhlVxnWpLsWFsOL98U6JpmdD7/nZdRX7SOIf/IhQ+VvJ8FKskERLpQFRtS
         jc5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=WoZTZ49BFrPlyX2/qYQABE9fub5z580pCFQ1pWgk/48=;
        b=pjVsaQPBpyKP6jCezwX8uPCFLbO7ErTEeflU8pwNouLM4us1MetZSeLdfK8pFPab8R
         cgmpPVw0XfLad8qMZ9PW/ag+aFbDZzg2ofT85BGIWRq9XWjXoOqMi+sKwBeIXquRBz92
         DPCJYejspoVrAkaptgUZR8XDkAeWpcCoU5Jfecga9EVrfyJnq9hsAE5igaTUlfFGZZ1H
         bgnP6fXiRPUuI5E1rQ4gdeanO5OhQ+HifwIrWlAYc3dH3PWudhXx8VlktsN8cryPYKId
         VQKDyJB6FK+SAx+9fOXXMbHeedtb8OrCq+/pDi54+M5orXYXU9EfPjzf5dO5jcb0CLIh
         lgsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by gmr-mx.google.com with ESMTPS id l14si65700ilj.1.2020.10.18.12.13.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Oct 2020 12:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 6E9191280300;
	Sun, 18 Oct 2020 12:13:38 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsjuUxZpqgrR; Sun, 18 Oct 2020 12:13:38 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::c447])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 1ED2912802BA;
	Sun, 18 Oct 2020 12:13:36 -0700 (PDT)
Message-ID: <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>, trix@redhat.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org, 
 nouveau@lists.freedesktop.org, storagedev@microchip.com, 
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
  keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, 
 ath10k@lists.infradead.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
 linux-pm@vger.kernel.org,  linux-can@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-gpio@vger.kernel.org,
 xen-devel@lists.xenproject.org,  linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org, 
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sun, 18 Oct 2020 12:13:35 -0700
In-Reply-To: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018185943.GM20115@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=QOZMzgTQ;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > clang has a number of useful, new warnings see
> > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> 
> Please get your IT department to remove that stupidity.  If you
> can't, please send email from a non-Red Hat email address.

Actually, the problem is at Oracle's end somewhere in the ocfs2 list
... if you could fix it, that would be great.  The usual real mailing
lists didn't get this transformation

https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/

but the ocfs2 list archive did:

https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html

I bet Oracle IT has put some spam filter on the list that mangles URLs
this way.

James


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel%40HansenPartnership.com.
