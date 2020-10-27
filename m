Return-Path: <clang-built-linux+bncBAABBU7Y4H6AKGQEPLQWTXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F629C953
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:00:20 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id j10sf2545690ybl.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:00:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603828820; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnSehN0z9X2ubD5kz/yMHgmEV0uwG54xENEUQ3hoP0Fkj+vfl0RtgHgZtwpQk9I3Gi
         xu3jihySTqu+Qw7EzHjsGYgjRZAqmXYvJLBdoLU8/iCVsW/BbluQ/+vR0pBbuBefbAMn
         h1iJ6Iis0VvmMyDoGXD9MHSUx0oZxW8o0pUF3MuD9n0b6wje/U5ZomnpM/0QBsM3fpQx
         Rz0E2XGHCiV1Or2xFABX2OwB7D0/pwqpRgDbUQKehk420IyTNUvkAMT8Gkl8huxYEPw6
         MmKucn5/nzMoms9SZmnQR8UvctFvvbsTv5A+u9FivdZr+ovJ4aLWZLIo3SoNNL8Zvtg4
         gynw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0aBeAfBmZCEVcBgPM1mkFNSEMDDVea4g+Ur9O7IP6Jg=;
        b=RsB2hlNOYp8QeXz0z84sHhPZhD9VdpxoQgFSf+HdUaN5UvYdcMdDmCx7DkVxNv0T2I
         I1HxBgm5PAokcbuY27izI9eBkbUldj4kY7Ohqxpo48I8VpQntHYLck1TBFrxC6ie5Qx1
         SP//NusyvM+efL6GUWkLpkwEE0cbhP3ai2a5gazHcRhKtb2uFqv5ZuYbTlqWjOKuKqhc
         vCLl1QgdIOeEU3U+vRZ0iL/t4QNfFhujlxmaA+4oc+FtWEM5VPSg5M6DNuYdlf64jCgd
         2N9f6tP2n21EG9ZWiZMSg9zHiJ1U8gwUM9BsgI15OuGlD/bzm8p+wMzOZgjcVJgdobcl
         yMYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cr5dQW59;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aBeAfBmZCEVcBgPM1mkFNSEMDDVea4g+Ur9O7IP6Jg=;
        b=plAHVmso+wA8GiiXCqHggBvO/jYTB0uwe+S5dsm9ASc64bG9XhrvUAsi/z/pI71iMG
         FkPgc0neRnxorB+Lxzzlvc2+7I0cfJRM73CdiekoF/LFjYfLc7oMrEGsI1AJoIIdx8dV
         VQkU3QK2t+jRYeD7tdMXsISerj/SBU/2/uRa8CP8RaZ8anK5iVFIPmFDULIMGdratTAR
         tQFMWHBcxEJl1GbxfAHwSufSu3+fzKAj7ZVaOa3YoT0QtxgSmYIpMvX088tAw7CbkeCq
         6cbmXby9MY/rgM0P6hdNU4yMYwXxQvuMZ4rjjKtrbqiz8p9XHE2necTOeSQrz3d1olh4
         0/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aBeAfBmZCEVcBgPM1mkFNSEMDDVea4g+Ur9O7IP6Jg=;
        b=sObDrFWHVwY7qEt6jHHfG8BR09yMRiY83fbyRB60UHXLESCfIAc1MeJ9Q+k+4EP/jh
         ZaIsCCPzOuHECcs2dEABw5h6udvizFe+eOHle6vUJz+xQvszKLxqqJlwP4xZYW1lSgHv
         qBKVoJ0jGErVYUQqwk7fPe26N8bXDnnfpjiRhwzU/0FxmCt89Un1hUE3cbqeBG//NGTH
         LpjJ65py3zWavxmCRNNqSes5pRw8baC5lEfrP58vRop0xYrUp01LZLk3Jw5eP8k2Tizw
         sc5eElswFfEBChzW6rKcU4NhVnOzu9kWmNnAisPZMzfhS3dqhREtWjoY/EmWqonJXPAy
         ztbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319HxOT9q6GkPp5qXqFoA67Li1k5otMyVJmorieNR8vUqGeyNmv
	apE6qcmFj1ic/WfHuWIpml8=
X-Google-Smtp-Source: ABdhPJyw6Ra8dTGycNR96MjVXrM1Lb4NipGeTGal2V2sE2CDQduGsO4y6lIFkyAZO6FsM7jVUN6+bw==
X-Received: by 2002:a25:3415:: with SMTP id b21mr5915085yba.440.1603828819778;
        Tue, 27 Oct 2020 13:00:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2689:: with SMTP id m131ls1383202ybm.7.gmail; Tue, 27
 Oct 2020 13:00:19 -0700 (PDT)
X-Received: by 2002:a25:a224:: with SMTP id b33mr6536999ybi.109.1603828819393;
        Tue, 27 Oct 2020 13:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603828819; cv=none;
        d=google.com; s=arc-20160816;
        b=ad9hxzJ2/WlJlOgL8N8tA2axUpks2/zYWuwXWlnMmDOu8tIefaLqLwMRkg8BPHwjsN
         GkWITg3r+VBNsOadJ/BULjq2nJ1oHYQxmVrjPf2rONVa9ySNiTXyvXdyzYufb5EkKgJg
         72fQzw0vSE7pFvg2f6bNro/8vUP3o5OwY7R146mK4jz48bNTFDV3Q93P9VHFOV5ZSUeK
         Z96/bOFrm6gR5x2zZq5+MwWlqZG2AwJ84QuWCyjEfjNWLl7OwAjz7CQVJJjr2ECbuJ91
         OdWmBb2v5q/1FVBLi1CsjhqBkjb3UyCL9Q7DSjcQ+84ZaYqQB1EnAvDbZMkveb7itp9s
         oCAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u3OA0zIvhbgYrLMp1KETXW29ZjCGSUjp3HHNTZfbnGU=;
        b=XQs9HhEwYH9z/7yEVKaz71Gb8EVILF/RRzcCciVKjNmRkOYYN23hLaiIA2dMK8/46Q
         89NLUCoJrn5jJ1Bd+lbbKJDPQfI9GP3txKf17xWhWFEe3U+ALYqlnERhNe/qR4uEb3oq
         gcshhsw0diDXlvwMHB+ByfEBRJ/QjoZoQyXp5rTsZ+bgaUQJPxKl/qZsAcCcXhv/hTGF
         DI96NbC/dLZKwfGD5xlpaB0oUoBKGHY2kbykYRNFTj1GfD1cC4N/HHwMpnR5DSlG79eU
         zwh7heWGqwgT518gGtWlXyDRx5FBpvw2+BXnb6HU0ndTC8jhF1iuqAV5HlKsHbbv7Pl4
         mvVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cr5dQW59;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q4si211673ybk.3.2020.10.27.13.00.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:00:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A42722281
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 20:00:18 +0000 (UTC)
Received: by mail-qt1-f177.google.com with SMTP id m9so1976321qth.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:00:18 -0700 (PDT)
X-Received: by 2002:ac8:4808:: with SMTP id g8mr3798666qtq.18.1603828817040;
 Tue, 27 Oct 2020 13:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <20201027145252.3976138-1-arnd@kernel.org> <20201027192229.GA22829@infradead.org>
In-Reply-To: <20201027192229.GA22829@infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Oct 2020 21:00:00 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1V5aaEw213rNecYxhDB3s9Lrhbm=ueBPPXbW4Bua0n6A@mail.gmail.com>
Message-ID: <CAK8P3a1V5aaEw213rNecYxhDB3s9Lrhbm=ueBPPXbW4Bua0n6A@mail.gmail.com>
Subject: Re: [PATCH v2] seq_file: fix clang warning for NULL pointer arithmetic
To: Christoph Hellwig <hch@infradead.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>, 
	Alexander Viro <viro@zeniv.linux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jan Kara <jack@suse.cz>, 
	Amir Goldstein <amir73il@gmail.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cr5dQW59;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Oct 27, 2020 at 8:22 PM Christoph Hellwig <hch@infradead.org> wrote:
> > diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
> > index f277d023ebcd..eafeb8bf4fe4 100644
> > --- a/fs/kernfs/file.c
> > +++ b/fs/kernfs/file.c
> > @@ -121,10 +121,10 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
> >               return next;
> >       } else {
> >               /*
> > -              * The same behavior and code as single_open().  Returns
> > -              * !NULL if pos is at the beginning; otherwise, NULL.
> > +              * The same behavior and code as single_open().  Continues
> > +              * if pos is at the beginning; otherwise, EOF.
> >                */
> > -             return NULL + !*ppos;
> > +             return *ppos ? SEQ_OPEN_SINGLE : SEQ_OPEN_EOF;
>
> Why the somewhat obsfucating unary expression instead of a good
> old if?
>
> e.g.
>
>                 return next;
>         }
>         if (*ppos)
>                 retun SEQ_OPEN_SINGLE;
>         return NULL;
>
>
> >               ++*ppos;
> > -             return NULL;
> > +             return SEQ_OPEN_EOF;
>
> I don't think SEQ_OPEN_EOF is all that useful.  NULL is the documented
> end case already.

Right, Al already pointed out the same thing on IRC.

> > diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
> > index 813614d4b71f..26f0758b6551 100644
> > --- a/include/linux/seq_file.h
> > +++ b/include/linux/seq_file.h
> > @@ -37,6 +37,9 @@ struct seq_operations {
> >
> >  #define SEQ_SKIP 1
> >
> > +#define SEQ_OPEN_EOF (void *)0
> > +#define SEQ_OPEN_SINGLE      (void *)1
>
> I think SEQ_OPEN_SINGLE also wants a comment documenting it.
> AFAICS the reason for it is that ->start needs to return something
> non-NULL for the seq_file code to make progress, and there is nothing
> better for the single_open case.

Ok.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1V5aaEw213rNecYxhDB3s9Lrhbm%3DueBPPXbW4Bua0n6A%40mail.gmail.com.
