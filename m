Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBW7EVOAAMGQERWCJAPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id A739F30078F
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:42:20 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id n18sf9342590ioo.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:42:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611330139; cv=pass;
        d=google.com; s=arc-20160816;
        b=nMK06mGPik0vyePQA93c/WLUBo2YTMa1VX3GG9xP/f4aviGkjNL7NG9fogioTsNwdB
         B0GTxWVzflwk+nIFu3mjoq1zQ0PEV9yLrUgiA2VFIwa2L/sfn/LodXy9brPxjJHnCZG6
         rNBe7XVKBqiJecqXcH21vPpuVbWHMyVKkPBClI7o2+BzWNXELx8CrUHeCU0SfgGDyWeN
         DS9NqRejRhUrGPsDBSh5T/Sa0W1F2d8/ftKV0SqGd16EGA4uJs4deCNZImIMjGl7jEBF
         rJutx0HDKm6ltVMjOSKkKK4Rk/hIgSfkB9DVqLXNK/yp9YgP73SepnZnqJ38GVTGUSPy
         I7Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B+hp5Ux3IA/W+cB9sLVpwLQdwZjkSZVqAvKybdSrH4k=;
        b=On+9TxUomgMj0FaFABmDfoqFYlbdN0kcBMA/NquEu4kUafax9ZHyLSjS57UIU/KrKF
         +LnicKE7XZpAfM7LKssjUrIiBsCl913NTcHSPzW7GDZdmz3CXhhbhSHZuD6Gf92OEuaM
         syST6mv5HDcXZqQ47n1da96GG95k43zNw15BzA2Tl9MfFdIjBM2mLqrVA/ggS44NjHyY
         Um4S3wNv01OwaUbauvdPx4yoFZt9RDdQtiw/90HVCCwlv3kdbtmOYa0znagfKpSnYMxw
         CflXhW9g5frfP1JY0C/embV5M+JHp3QPxrX9G/uQ9zeYLzn+jiU6lsPR2jUzf63Tmo5+
         2BcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iegA1LvV;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B+hp5Ux3IA/W+cB9sLVpwLQdwZjkSZVqAvKybdSrH4k=;
        b=Khy8qMMIeZzEilrcYld8/d6gKmUAMkrRYd3avFMV65buG85IfzHAoP/g0AEYrcdU/p
         zJu4A1iSUhdozlWSoFFVKy9JFnamE+DSbrpQ+wlQlh8fnUGF++meS1uIOlEFR8zqevwQ
         ddpeTtSS9BHoa+AV1IJu7Mu/XfJUvMWB3PyuomAW3pMxg09ose0o/0e8/iJLN9FQCDII
         F4szN/IE9S5hNVsreaf8qet29ZQTlNzMaxB3oPvs9VSiYTpwkgcjXCBAdqsg/0AQKWrB
         XdzIbU9BsM1Gy1n6ZkCgDC+70Cqck58/3Asr4kOA2eDLpwVdybOBKQLbsK0DwxCxkQIg
         ziHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B+hp5Ux3IA/W+cB9sLVpwLQdwZjkSZVqAvKybdSrH4k=;
        b=LbDIecVq28kK38K5ljxj1+a5tIoeO+w+Jx81zS7oRcoNvfeI3/cBAjnmXd/IC5i8bH
         KlKzS3fcRnCIoq8I/eOFWQGEGymzCquZ4L8ASiS1zbS6MT3xPbpV8dcWdXQpGPH/jWCc
         7pbYcURVL9Iiiw8CayvDEs3GBETzi/Smy3sBpZyK1Fty0+R5V9+3VXzZo92Stm7NVBwX
         8eOpFioVbVVHR9hz/xtJSPzVpTPbQGdirQQXlNHnUCgo8pPtDg41YMerMSykQyqsFKie
         g9tQeOjLTpeWXPT5j91XQ3Ne6ynnGuJ0q84XfTRSBhZkwghG7TcJ2pg21OEe8O2WuDl/
         8Q3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ve0x8uRcu0p6ONEhJ+O4rkfD7OX3kLYuYsQHzHXC74qhRlgG9
	SiaJHJqbTvfEgCw2+oyE2ME=
X-Google-Smtp-Source: ABdhPJxaxpKr55Ri8ssMMmMQYK8zcI9CwnwuiBJPb7F9/RqAEGsY34/+hfBzaYDhsphYBq+FA1Lixg==
X-Received: by 2002:a05:6638:248:: with SMTP id w8mr1298235jaq.51.1611330139272;
        Fri, 22 Jan 2021 07:42:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1c9:: with SMTP id w9ls865908iot.2.gmail; Fri, 22
 Jan 2021 07:42:18 -0800 (PST)
X-Received: by 2002:a6b:c949:: with SMTP id z70mr1311157iof.80.1611330138849;
        Fri, 22 Jan 2021 07:42:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611330138; cv=none;
        d=google.com; s=arc-20160816;
        b=TkEeV0gr2n7NOfIiGiwAnpmhl6+mUuPG9S02ISa2CULasBsjbevomRGLhvSE84PKM+
         ycR3zb2cSrWl2k0EDlcnrO47ulgPDr2Pzw0mQdc10pBMHzitjrCGYHh9zUToxvAG1ucu
         LqbjMZQE29VopWQPmcHNN5AIxqZOAIekH+ipPzy5fG0cRYgEdErjqR1VzzE/K1ipwLnj
         CIaHmTN/jtqfbMvs1F50/F0LViQzWdV/awbla9X2uKEC3bhp2SQhy0gtbzuJxm6mwaAC
         pTvWQGXWvasXJ/NAFdtptXm7co4cBkXi9muVQ/I8y6ky4ALbL43U7aJu9vfwLMVIRoWk
         qB9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aoObqNZIQR4x9qRo1g8n85wBtUQqNCVQm7KP/81m/yM=;
        b=C7sP8poEy/tmAbeYTMHlUGIrF0c0aW5I/rneMWV3RGkZtKERkttJ7XRxQRoYg8dcZk
         O32OI5pPA5IuvXAkr1+ytRlO3hJtNGAFLVcEolFJa9J6s/ASvlWa9wUPBDLIDsjieoss
         UlPHHBQ1WfEygoDZxOKt1FrtL7VjrOegr7U6zxYRrpMCNdUFsRUlAAluI/wqCZ6SZ5uw
         TO3kfvc4lQR+yFrEhQ/1M76bV4bfvs7rlyqfGJ2uMDFDn/4nq+hZY5clIfbDYSpCCtXO
         1Dn7PCgRMmEc+QfQE/8Pe1LfAB+ZTq/08z0JpLOvsDFytqNXxD1EG7TYzjRudOnuQUgt
         +OvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iegA1LvV;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d24si570605ioi.3.2021.01.22.07.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:42:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-dEXscmGnODyT6-JqNcDfDA-1; Fri, 22 Jan 2021 10:42:16 -0500
X-MC-Unique: dEXscmGnODyT6-JqNcDfDA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 561E5801817;
	Fri, 22 Jan 2021 15:42:08 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0755119C59;
	Fri, 22 Jan 2021 15:42:05 +0000 (UTC)
Date: Fri, 22 Jan 2021 09:41:58 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210122154158.lylubqugmcxehugg@treble>
References: <cover.1611263461.git.jpoimboe@redhat.com>
 <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=iegA1LvV;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Thu, Jan 21, 2021 at 11:38:54PM +0100, Sedat Dilek wrote:
> On Thu, Jan 21, 2021 at 10:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > v2:
> > - fix commit description for why xen hypervisor page contents don't
> >   matter [Juergen]
> > - annotate indirect jumps as safe instead of converting them to
> >   retpolines [Andrew, Juergen]
> > - drop patch 1 - fake jumps no longer exist
> > - add acks
> >
> > Based on tip/objtool/core.
> >
> >
> > Add support for proper vmlinux.o validation, which will be needed for
> > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > objtool anyway, for other reasons.)
> >
> > This isn't 100% done -- most notably, crypto still needs to be supported
> > -- but I think this gets us most of the way there.
> >
> > This can also be found at
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> >
> 
> Should this be s/objtool-vmlinux/objtool-vmlinux-v2 ?

Indeed:

  git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux-v2

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122154158.lylubqugmcxehugg%40treble.
