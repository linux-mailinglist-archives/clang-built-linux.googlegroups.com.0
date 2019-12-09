Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKPPXLXQKGQEN64GIWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B64B1177F8
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:07:54 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id h10sf10067104iov.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:07:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575925673; cv=pass;
        d=google.com; s=arc-20160816;
        b=IdtdoG3POGenLdMSBx949flAfc25ZaFXn7Yl6hyHlg1olJYCvpHKrsDnEbT6dCO1if
         uSh12NsSXItBVI56LRTsLiRMb4DuXb8TXvk+59LilxsARxDiUwq9y83ZpJ6RgtQq2Hz8
         9Gd3NTeuKtZpWjc574KJHW5P7saaOZmRTv+K1ja18YmKRm4QY5fTDWQe7ua/rhxuwBUr
         ddhTp6FLrGywI3olQPJwjvRIvcoOYmDrQHSIK+8iMChAmf+9pTRIVPRfGPK+xViBTUhu
         PjMlB5z3SRgaUEz9LuptuVRoQiuqxTMgS3E/S1Qo0JfkKV7Yu+3I0hrNODfIj6sY+H8G
         ywCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=s+cY1fIc/jrEzbMJpDFUoOpM/QV4ySv9NaKgBkQh7uA=;
        b=mNA/XasccvHOF4fTT6znWgIzNQY3+UoFzOu+v8yvZqq7lNpzKTrW3FpYzIJCzBLtGP
         RoVAdHYVq590dBOcQTFPU0cCNHN6xqeAvYRzzHPk7Z0fG7OHL6/okQgoACt6QW8GXjod
         KbOVvh1kMX290fobIjYioLv9mzpXq3VMJKifjEYq9QETgAHnE3h1TwYp+5zjd3B2bVFO
         6KUDd3iJk8UQW6oEdhbhqcRs3Sv83Um6lLKpqwywJlXu9tegnyXrnzTAQm2XYtbTa3Ey
         S4YnLajlqNNl1fp1KktnXCbKTz8ejd5Gt6IkIsOgPzGz4FkK5XrJAfVlHCbjE37UfTKp
         wO/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N66gVvBq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+cY1fIc/jrEzbMJpDFUoOpM/QV4ySv9NaKgBkQh7uA=;
        b=cD6jYtB6adQNaK+ihEu90GjipoL5TVjyUgDlkOw8QvYbnHp5fgMAvxeyrzvYQkC0ug
         LoB0duFnyKqVhPRaKzJgPM8twLwOul2WkUUm8mTe3bpJ3fmhsa7gjaxcCNwjmsoOjpVz
         TQVcx+hAyDjWNNafaVH0OxmIp0dPZSXCaSTNSXogDLf7cJOYmVquHBSXxpFFCk+9H0nA
         FMTZosXKV20kNBZ1TnyQw3fV32U1PGWGCxvNUIDXWnh8YOjivFtcW1GOoMJqLb7zr2Fc
         PrUAaphpBeDK+44XLUf0xbmY47VnuAuQZ60251X4VX6BvTWNjefKLCc5REXJxEYOHHaN
         6kMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+cY1fIc/jrEzbMJpDFUoOpM/QV4ySv9NaKgBkQh7uA=;
        b=F8cvvlWa8v80nPGh0hkSd9qE7NjOh+Xrknt0MOdL4z6L9Dj0/cnZ0sixBZw85iePWu
         J0y3O1/eHsyLSBJLdZRXkfXtvjWLr6+ek4ge3DQpHPcGC3gTX6zLP6nHohAVVlwch3iC
         IVv8vpfFPfft7m/d4WqEkg6Ntuljj36ipnkVZZyWbSt5yowSuwzEjqTkxID3V73b1IS1
         jzQNQ62cyI90pimv+hGxxzmh3nuDp+6Yz834WkjZMCROy2+g4JgcvrtXMita+3FE0TDQ
         MLou661G+Sss1nClxaZp9Riom6UgTRkkc1zWLLXs9AfjeSmCpb7I/2q7MDG/9bvFL1UF
         u3Fw==
X-Gm-Message-State: APjAAAVHLuXZ3pASN75XaSPXVE5wf+dD4LvzpKTEcmx9NscjOBxnXa85
	OQWiJgUyVNMBxOFTJuDc3ww=
X-Google-Smtp-Source: APXvYqzPDIr6rEFHqvKi9l05AXuopOZTvCes3q75iVBt+gqofcJbsgsIR1Ypx/H5aVQG/s63VML9+g==
X-Received: by 2002:a02:3903:: with SMTP id l3mr22727475jaa.118.1575925673563;
        Mon, 09 Dec 2019 13:07:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1912:: with SMTP id 18ls2523239ilz.4.gmail; Mon, 09 Dec
 2019 13:07:53 -0800 (PST)
X-Received: by 2002:a92:49db:: with SMTP id k88mr31199432ilg.25.1575925673285;
        Mon, 09 Dec 2019 13:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575925673; cv=none;
        d=google.com; s=arc-20160816;
        b=k0NLnsFueWlUkrOB3t7u+Tf1tx113j+/zlj5J8QmDXpiusslNXHene6k07b6z8+7Aj
         a/KWq3stUr3f+v1e0QjSVG44Mo1pp0gCgC4zLlPjPH06igoSQDTmSE84mH6+AWfVBIf9
         7w1yDZ3CbiskPhQQr312BIKav/L0BAV4jgKNLPkKP1E2kVlecBXz3bK+7MHWW9jpyScg
         ungKNo2du8HL5CMT+EMPkKhSy3Kwc1uhJq8UKahGViAFUyXcwTWqk/ShoP8oz5Vfw5B1
         pM1LdNspsZBh+QA47jW6Zgnn4Q62t1NoIW7SRK/LR2BNhetA5M/La6e8zRVWTD2uW1Ih
         6QZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K+eNXnjIau7cgWUnA3a2Cqn1U1V3PjkPxI5SSOqsokA=;
        b=WX4vZw5CGnJxHk4JRh+vmLxxLFPqjtAVe6XgXDuLaneoUx/JYf36rOBQtZGnFkKJjq
         0ieAKEtYOlj2S9NhahlZgLG5rngdl91Z6sMiTui1eJvj9W+B5uaxj0k7pXALcjoN8taV
         PYyqW/za/u79UcZ98xgteQlq6pK6hXNTrLiiqk5k1TjHl/F5wPktXsAJdsiN9vgQPr78
         fPmT3hkooP0rgoYZOm+34QH7CaxSzitV9zZ4PkT6wlxaJPWyAXsS+TtG1UrEUBV2Q8a0
         mGGD6cepp4kybABIxL36x3Ekd7AWCKTZtZ40qglqGl4kgrAWPlhsQXlJ1MKZ+F/S5NwY
         NLeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N66gVvBq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i4si84713ioi.1.2019.12.09.13.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id k25so7716734pgt.7
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:07:53 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr20478238pgu.381.1575925672294;
 Mon, 09 Dec 2019 13:07:52 -0800 (PST)
MIME-Version: 1.0
References: <20191209201444.33243-1-natechancellor@gmail.com>
In-Reply-To: <20191209201444.33243-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 13:07:41 -0800
Message-ID: <CAKwvOdmrGGn6f+XBOO3GCm-jVftLsFTUXdbhS9_iJVY03XqCjA@mail.gmail.com>
Subject: Re: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, 
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>, 
	Jens Axboe <axboe@kernel.dk>, Stefano Stabellini <stefano.stabellini@eu.citrix.com>, 
	xen-devel@lists.xenproject.org, linux-block@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N66gVvBq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Dec 9, 2019 at 12:14 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>                 nr_parts = PARTS_PER_DISK;
>                 ^
> ../drivers/block/xen-blkfront.c:1115:3: note: previous statement is here
>                 if (err)
>                 ^
>
> This is because there is a space at the beginning of this line; remove
> it so that the indentation is consistent according to the Linux kernel
> coding style and clang no longer warns.
>
> While we are here, the previous line has some trailing whitespace; clean
> that up as well.
>
> Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than XENVBD")
> Link: https://github.com/ClangBuiltLinux/linux/issues/791
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/block/xen-blkfront.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/block/xen-blkfront.c b/drivers/block/xen-blkfront.c
> index a74d03913822..c02be06c5299 100644
> --- a/drivers/block/xen-blkfront.c
> +++ b/drivers/block/xen-blkfront.c
> @@ -1113,8 +1113,8 @@ static int xlvbd_alloc_gendisk(blkif_sector_t capacity,

While you're here, would you please also removing the single space
before the labels in this function?

In vim:

/^ [a-zA-Z]

turns up 5 labels with this.

>         if (!VDEV_IS_EXTENDED(info->vdevice)) {
>                 err = xen_translate_vdev(info->vdevice, &minor, &offset);
>                 if (err)
> -                       return err;
> -               nr_parts = PARTS_PER_DISK;
> +                       return err;
> +               nr_parts = PARTS_PER_DISK;
>         } else {
>                 minor = BLKIF_MINOR_EXT(info->vdevice);
>                 nr_parts = PARTS_PER_EXT_DISK;
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209201444.33243-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmrGGn6f%2BXBOO3GCm-jVftLsFTUXdbhS9_iJVY03XqCjA%40mail.gmail.com.
