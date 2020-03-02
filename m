Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO4C63ZAKGQEGAAAA6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C1117667D
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 22:57:16 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id q13sf824200iob.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 13:57:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583186235; cv=pass;
        d=google.com; s=arc-20160816;
        b=qhsUJ91dpW0BaFMURqImAbHcAcKvG1LSxuh2ogE8i2SWCMTdBytppt8Mr5TB3/+mDY
         OmIwCxCfZhn8cSjFmopGgDVFkUfbp/sNyHECeAa6bvF/8FCjGURIPYZMqR42eSVVaDRC
         iy7U8pySM3UME6TcvGwjt7zQwrQ0UabSkXfa4oVoy7NSBrXNepmiSi7e5E0bEpczcFNs
         xa3mSHFGvyXrPnM9RfZkGxltlDYDlDgvH9mNUUzgVUl2/XeWdiocvHPHdDRUnl2HNQ2z
         U1QJIgVYDY7tib8c+6PaXGLHo0n/+2loPJv1eR9RZoI/3JHW/imZ900J5xtBEaf8gGld
         56eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FnINYakCTl2gDcy1lfARmfOla2+t4W1UG0FJakMTJU8=;
        b=pAqfzujnuOEJX5GYBSJWqVkSM8Yr99VDokVX7uWvrMRVXLppN+G0gOeUYjM8Emcv2l
         kn0b3gPnx7LwRAOlXifTD7BwZCzu+xxJ12tEpTESVkxyQAM2DZ7Xe+8Gh3pjxSSDO5gn
         p+ngOEF8J/9BA0IsjmlYGZntapJ0hqaJtwqJsw/NfnhOuzck/jvp3xl4dT3T9SgsLJhd
         2rrpDFsqcJfpdIjdLSwu6+Ka6i5tfFkkUyhW97MezhoK8EXvWE/47GFOCxIePLnbf40V
         YNMlWdcs/+rEmZezmZ83YyBlPnWq9db08ubKE6BJYpL8slyRzofG0aWAzxZdoEyCtKu3
         qrOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EDLx57wY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnINYakCTl2gDcy1lfARmfOla2+t4W1UG0FJakMTJU8=;
        b=GHNnnh3QgsLLK7HMJO8YCTCSCKuzTVDK6Ht+Y1xaU7Z+b6ZCgjIMdFnLrs5Sfmzkw1
         BNJsqJ94HB7NsyatmKsSEe37OfBuQWzNvzSJ2MYicOXHs3hV/+173c5Ch1Yd+MCTSh0I
         FaITDxKXHw+w+F69slQZOT6yCHOCzlNgMw7YKGQabpGC94dCi2U4gJqvjHiNf6BtPe4j
         8AOwb13urF7MZ8OQ91IGkdeW/a7RXD8SIglNjK1XoA7SKLzi7gjolbHYcZJ+iDAG4Fjs
         0W0WyPeJKbIuRX+5Q/vMHNnbheZzmIn2mVqTakFZ8tLQhy1nCzwEWWAG/f+VOzPD7hu8
         w8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnINYakCTl2gDcy1lfARmfOla2+t4W1UG0FJakMTJU8=;
        b=ZNJw6zSyDcDt8Me4gRNCdPddh13H4BtzHWKsibPrcxs6LXACArDtBn/0TeSOeY9c1K
         fMGjfoJKFnObBKbKQiOuG5GzZ6tj5STWCybgShpJhLJ/H72D26+I+wntUE4rBRFoW1dh
         iVvbXLH/WLOvDA5QdjsBGdJ8sKMajxgXR3VBwC6wiLzvo5C/xFobOek/zFRhnVRWMtxS
         N61CZmRGbN916RwatX40s2JFgS1LqbCQHRdYUfqdYvwEMgXCfdptHtpz/yEu32K8UhuD
         aefcmuaHZrZ9qsY177fXGG/ZtKmf4+Azdnd/jgesX1SjLJz59fkUkIThQ/zWjyrGUagc
         ExFA==
X-Gm-Message-State: ANhLgQ2G5zSt5ViwpiJiu4ZpTOTXoRm2r3LoQ7LlIhlTex40c/dH5HJj
	EOh/2MHwPu1439f8IcSmIt0=
X-Google-Smtp-Source: ADFU+vvNFYtTksJdx78QCqyuvQR+uGn13RHaXZ/ZFxKnh57MmfqSPl4wgCqFcNcHo/I7aICV5C+q+g==
X-Received: by 2002:a92:d84d:: with SMTP id h13mr1652479ilq.180.1583186235617;
        Mon, 02 Mar 2020 13:57:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:18b:: with SMTP id a11ls131383jaq.2.gmail; Mon, 02
 Mar 2020 13:57:15 -0800 (PST)
X-Received: by 2002:a02:7f4a:: with SMTP id r71mr1104918jac.95.1583186235247;
        Mon, 02 Mar 2020 13:57:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583186235; cv=none;
        d=google.com; s=arc-20160816;
        b=Ltji5TN3HdqCZ2LRAWGiNZPxJ3vzyi4S4pJAj6l+COSwMbOGPOK3AftERSGC0huUd0
         cjtdl/5I1RXLKoLyyOtpbmXxddILho0Xmc28YtBtPG+8UhXO5SUeZ4R+1xkq4A9KwP2C
         hpbvhtsjBF8Fc9eg+6/tR6lMSuNirDmcBG8vi7XRVaArkkS5/MU9vQs1NVn1gVytwvs9
         a6GghpHOwDDFFHWncJQStTnqkrcunpKX6x4/UOeOtwpavhCw3QaazolHftoiqYEg0GmZ
         9d+FBeYUQJOnsHyeqqYSRCeR5SKPdOhWNLicalJ7K05rPq8jPL9RkzMEoIPRlWIuHds6
         HlXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k8cncLmIKb74ARY4u3Ul3MTwXaMgUO4z3at0fIC1AK4=;
        b=jr2HODmSQpJy/4ZUuKBV/KZMuEG/+SrUdS4e4ENnkhj3DcJ/pZO15MPG3qPf5dak8m
         72AV1A9p1sUWHoglBIkAKW62RwCQuLkRvIB8NteJutkx5WBVeqP25eU796vG+f3qsqB+
         oUzztOVDSA7UuZxo6azUJUs03TeOzsGXXL2k8sRcu8nHaskIvFVJmsI4IacBlIaSgep+
         47CoQw0/Jz5TDkpJ+Mt7nD6ynAq/qZDEXfaKALtFAwPpTVntR6tcLPga15r0ZRWATBJl
         6C0/xQO52q8z/H3Q7OdEvFHnn1q4OnL5pFivVkpt8KFM8jjId5r9uOewYL8LEI2aiSwz
         B+CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EDLx57wY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r8si558691ioo.3.2020.03.02.13.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 13:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t3so485678pgn.1
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 13:57:15 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr1002877pfa.165.1583186234526;
 Mon, 02 Mar 2020 13:57:14 -0800 (PST)
MIME-Version: 1.0
References: <20200302213402.9650-1-natechancellor@gmail.com> <CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg=mCONmUV_wqSQ@mail.gmail.com>
In-Reply-To: <CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg=mCONmUV_wqSQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Mar 2020 13:57:03 -0800
Message-ID: <CAKwvOdnbSOatU3DjKsKAeRmpVtzWUWu6NxxJ9sP-t5es6K9_Ag@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Remove unnecessary NULL check in cti_sig_type_name
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Mike Leach <mike.leach@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EDLx57wY;       spf=pass
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

On Mon, Mar 2, 2020 at 1:51 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Mar 2, 2020 at 1:34 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
> > address of array 'grp->sig_types' will always evaluate to 'true'
> > [-Wpointer-bool-conversion]
> >         if (grp->sig_types) {
> >         ~~  ~~~~~^~~~~~~~~
> > 1 warning generated.
> >
> > sig_types is at the end of a struct so it cannot be NULL.
> >
> > Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/914
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Yep, GCC and Clang both eliminate the false case as impossible:
> https://godbolt.org/z/tjbDqR
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

0day just reported this, too (3 minutes after you sent your patch)
https://groups.google.com/forum/#!msg/clang-built-linux/_SpkRyhMIxI/IrBtEk-8AAAJ
If you wanted to show some love for the bot:
Reported-by: kbuild test robot <lkp@intel.com>

>
> > ---
> >  drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > index abb7f492c2cb..214d6552b494 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > @@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
> >         int idx = 0;
> >         struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
> >
> > -       if (grp->sig_types) {
> > -               if (used_count < grp->nr_sigs)
> > -                       idx = grp->sig_types[used_count];
> > -       }
> > +       if (used_count < grp->nr_sigs)
> > +               idx = grp->sig_types[used_count];
> >         return sig_type_names[idx];
> >  }
> >
> > --
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnbSOatU3DjKsKAeRmpVtzWUWu6NxxJ9sP-t5es6K9_Ag%40mail.gmail.com.
