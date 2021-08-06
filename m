Return-Path: <clang-built-linux+bncBCU73AEHRQBBBJ4AW2EAMGQEYDJLBBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E93E13E2F52
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 20:32:08 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id e9-20020a4ab1490000b029026e25c335b8sf3349232ooo.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 11:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628274727; cv=pass;
        d=google.com; s=arc-20160816;
        b=QMoI5dsPILWKFq0juWkATbNWAlXeHgz9FjdX3uSTBk9QmftBtVFaX6KqKTmvKH11zH
         h2/GkKwrCvOQ48Phe2P6sfW2pGCL2mFwgpE5bQjrbHhZvaO4hvAAc1mxbmLJZXyLe617
         +JTR9hbjwyh5TcizCEgzSS8GNZx0Kx+PEF8yOb5HpndNPDBCpudYJXNbqI4gVDcX5MD+
         DUL63hS31rTYJlqq+ky/onrScsCHLnFIjxwa8uMuIRIvuKTwCajhUDjjzZyTOGFUNsd/
         IcwQpP/Bnja7PuNHIyym7wzBFxWxWmokIjaU5M7flce6YUxCmiOjESGXdPE3SpBgt8yQ
         g/Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kIu+SNnVgiZJDpM9SQ8qlbi9RpV0bmnthn3cWAKH8z0=;
        b=M0P8O0pwTfH5jn+ZbAlWWOHO/33JBAAp6XbafpU16UWdLtA3oxohRTYWLzlB0XZ8PV
         P/AQ40mtN2L3sSsh7PYobjt0OO4JhCDKfRYXpIO1ksjfem9l3dyIx1Q8EnoPHwZul2rL
         WQvtKCSevNz6FNjdKKBdeGrWi6aKukEslOpF97tfzVJl5KJZI1wO5Fv/4KvOxbq5Ts5O
         iaph9FRziIFPDbGzqQ3QAMz9oB9amkEYAevUvKeYTvDMwVaSXNyBE0nH7AklX/+AidIF
         bEmSSvXAnCoxiU7IEUedaJb5VS9MgxFiI8E8ASksG7NULei7tyCG8+0tnCtMnXe1qHL1
         B7fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kd1a=m5=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=KD1A=M5=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kIu+SNnVgiZJDpM9SQ8qlbi9RpV0bmnthn3cWAKH8z0=;
        b=XGsaczQPpAysYpu4Q+nSX7ZyQgfwCYreaFdxKEKYESTrxWaR7cnHlaYJ6aFeDuY2tl
         iJTQ2GxGIfeKG0n4U0DI31hu4nzw6Y3K9zfLO+lf6Nonh+RygQd559vjDBmInsI1jyI7
         v7ku4IiJRaxZYqiUg0MlY4CG+DuR6+nAUyuDzCnQjZ2tWPdz0rTi19sbslbG7tAJs4B2
         33+tobJzaCLJAucBzwFD90cD+T2QyRrtsFpZsO5hoeTokdVLp/BFQ+qasF8W3K3Qmci8
         GWQfmuhCMP69/xpuyPfrik7E9BcjVpawZk73h0+okj0KwfTBq4Xj0ieECJo+i41uQQeg
         +nlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kIu+SNnVgiZJDpM9SQ8qlbi9RpV0bmnthn3cWAKH8z0=;
        b=jp7tNIWqM3RfxugT5ULAOGnfsDNk2l5RjHYQM78tP3cOGBp9EK1NDPy0VhvZXTp9ZF
         6ZpqEtvGF+p4bSU4vu8Wene8dMniemXvnN4lrIjZPwZgijRXg8Wpw7znE4RcJzZ/gHQH
         V+oiD/eWygHHmjHoBujRe49FZvmTgK87+ap87dJZe5hVDpkGuZCOKzzTdQkuHgQ7iDgd
         9k32Fo1DetHm4/8UYoq/kBsQMilhaWTZT40uLwNcw9j12FO6LeoIiu+UzRNmfzgMMBiQ
         trNnsjuBrqyKVcCn08rKnINzQ598F1B6J4PkI1FveqDMIgrEVQ+KnKyGInNNn9/tJKkp
         l1pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330Exi26ayYuzTDQ31+4eoouaKeGpcHo1AcqlgezpVCv2X325AC
	fe3JftrAuIbGGQAOcCdoFrw=
X-Google-Smtp-Source: ABdhPJxydhQU0a5KKEq+UNuvLsbT7JRkr+fCAE7WtZKN/qbK6CGgt9euaiCk9uHJfgy+ZNPKIdXVPw==
X-Received: by 2002:a9d:6d86:: with SMTP id x6mr8513727otp.188.1628274727441;
        Fri, 06 Aug 2021 11:32:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:b84:: with SMTP id a4ls2324769otv.9.gmail; Fri, 06
 Aug 2021 11:32:07 -0700 (PDT)
X-Received: by 2002:a9d:17e8:: with SMTP id j95mr8204883otj.263.1628274727028;
        Fri, 06 Aug 2021 11:32:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628274727; cv=none;
        d=google.com; s=arc-20160816;
        b=eoPBz1h8B5vEX0d6WGfKoB1G0yuU5CjEQAyI1wtDtggUJySPTaKu/vhWl04T+kgWGH
         I/ZLxFHRbFsi51Y0Deseou9oSIw8jC9HeOrLV25yOqjsRFQH+AU0KYLbs7KNtCTrjkZV
         1zrFTjke5A6xiyngNyUk9ZrUWeWjeereel+1HtAoxApcYUsTsPIIdJXIz1E+LtobdDSx
         hF8mkWAd3iV28ZWOqACjS+8ghqy9r1E8IxnMzHmpFSgF66k0vrQ7LG6rIpi1qo2oAuGf
         h+MFohL+ziCuyrYiRYmu9xjOY02ZLjeeqgSxRubNRoF3MC5njNLoA729kPsxhFz2o+YO
         ZiXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=nAJ7+ZT+tjnkr3CCq5ZJmP3tz5K4zsHTr7Ar9jP7xYc=;
        b=GeFGKB76B3dX6k3RxUDMRBaqXSyx+lJoWhFRgHtgxt0RBb1OGY7g7TVWqZL42bZ08b
         +JyoG2vOK0yvWcmmQvMtJQfhI0X51AhSWS625pUvZzai3S7Ry/chz4Nlu4VTUsfYxl4w
         fH8rPuToAlfHVQhC+7wFRV8rFzxesIkYaVuPQdDdv1jE8Qr/cbkJQbwuxpUFIV5oKHaH
         gzC9xPx/i2bA3Zyr98CXsYkpfZvxH+yp5CRQ93KPx70BZTXs7bF1wWX3qtc4Mv7XA1HW
         yKMk1zJcVncow4M0dnJM/pEByKCIHsilWWns124lHCFjiPZWXiRgmaHSBFFECbFIeukr
         q7JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kd1a=m5=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=KD1A=M5=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u9si362998oiw.4.2021.08.06.11.32.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Aug 2021 11:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=kd1a=m5=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3214A611C3;
	Fri,  6 Aug 2021 18:32:05 +0000 (UTC)
Date: Fri, 6 Aug 2021 14:32:02 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org, Tom Zanussi
 <zanussi@kernel.org>
Subject: Re: [PATCH v2 5/9] tracing/boot: Show correct histogram error
 command
Message-ID: <20210806143202.1b608894@oasis.local.home>
In-Reply-To: <20210806230043.cc3700ca5518651c3efe5748@kernel.org>
References: <162818075888.226227.14156763636028793396.stgit@devnote2>
	<202108061028.Wme82Hlq-lkp@intel.com>
	<20210806230043.cc3700ca5518651c3efe5748@kernel.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=kd1a=m5=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=KD1A=M5=goodmis.org=rostedt@kernel.org"
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

On Fri, 6 Aug 2021 23:00:43 +0900
Masami Hiramatsu <mhiramat@kernel.org> wrote:

> This seems that the base tree is not correct. I worked on Steve's 
> linux-trace tree for this series, including 
> 
> commit e5efaeb8a8f5 ("bootconfig: Support mixing a value and subkeys under a key")
> 
> which introduced "xbc_node_for_each_subkey()" macro.

Thanks for confirming. I figured as much.

I'll be pushing more 5.15 changes once my final 5.14 fixes land in
Linus's tree, and I can rebase on top of rc5.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210806143202.1b608894%40oasis.local.home.
