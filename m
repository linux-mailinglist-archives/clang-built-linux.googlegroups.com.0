Return-Path: <clang-built-linux+bncBDRZHGH43YJRBF4URD3QKGQEBK7W2YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 835C81F65D4
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 12:40:23 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id g84sf1180968wmf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 03:40:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591872023; cv=pass;
        d=google.com; s=arc-20160816;
        b=WR/1e79ZHGV6EeJIX+5UVe2kv93w0w3fbyhnCGqb7n3UTk1RXGwzD++R3NZ3dLb/tG
         bSrXxY4tMb0RfLAPleXhHlB5TVfDbRweNxW8sEbU7kpfulCe/KBu4EIInKO/DQQ9Mdyo
         yoI2VBWrDPrV479So09osjXI0pqdykYYwMV3id5bcTm4H18bqaq03FXOCbApe2XHIzjB
         1booOLm8IlWPQy1wBz2Qy5joeFRrAyFqWanxrsncKrdR70KmQyRXATHqnPi9fw7n6ziw
         U/X1fMciIxgT/uqoIVIBD1GbIQT5M9XXIXPScYjHv2gBq33SZv3Qzk03RRzyyhuPc/xM
         pIpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=k7A6TpCD3+YMXyRVskoHajVWekx8HqUcOfFCn+oCV64=;
        b=QS8p7rKThp318XXNuhzXBg3NNgqN+WpzrBQrX8KsGwxX++Z2us6nDbocXEViuEFSUd
         1U7X4cVuXXdNyyPH61EatadHiZ4dwVe4z5iFYKYruEyNNpVm8YVn1QsMSIIZqLkfBGsK
         v1QIZzT0cIoaJQKQ2VRpVfeZqdcboGZrMxYYInXbTuVv8IlVFz7DOnOgdXBzlxYykIr2
         5qJJ23hKATAeYtIyvL6pmVGbNnVeLm4qBU5Wqn3HbSn3jf2sBpWgMmTx9CtNinz6+OAL
         mZCqM6VfmXmzk064qanSfLSZEaS38xZFb9TOOHbbZ7Fa/5kswQZ36tAfNtG38zBdcXhx
         swRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lj0c4vLN;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7A6TpCD3+YMXyRVskoHajVWekx8HqUcOfFCn+oCV64=;
        b=jBNnzdBevBxpMicOH9icT0ze3kRaz6dhcQb+OVkZ8tEO9Rp9sMbo7lmenElmEfVak8
         46j1ULvpk1cXnH0ZqqWQ5msUFWzh37ZD0JUGBHMgyFDzDcySpzDJQp/74R9A0+/PLkPd
         YGeZVjCB9HYHRLkS9sAq+nKLPCfzjDgio2kiqbHagTfzd4SMhNd2BzSWQIqn0Vfs14Hl
         daDwl11WMpPam/0DM4vX8FSHNbWNSHh6wEqvhfL9GEwNIxCMr1gDyFGx4MLw3LQUjNlK
         FwvJyGQ4PhA8dyoonTGg+L09190MwnikFwePXqSHhU6ZJry94RSFzWZReLny3uY0lgIu
         4SEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7A6TpCD3+YMXyRVskoHajVWekx8HqUcOfFCn+oCV64=;
        b=kiuI4w/BGsU2ja3BnRjxW0c0q0Rnw68S/LLiEdq/cur1y2A3XYg746tlgwuW/9bb9h
         iVitDzLSag09+ftAov1Fd9GZsquU95aNMzhBYMzwtHNt8aZiqFsEfDfdhRmfKYqWDjnt
         PeXgf8trcFsz9FKEQFTkZPBrC2HDAtfK3sxJzYnMffVSETi5/7MtfxG2OL6xCjY7xrM1
         yRkesL/FR0nHCWQjicmPLd/sJJzVJVKjcQK5mB+aw4MWvPDxxAH/YHuwIdlFwMClTQMp
         tzP0QtivlkeJWJHkwdJWCw+mXrJX6AUgt6w73a6+96EBR6hjUaaixv6GkCwz1tFda2ya
         7N8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7A6TpCD3+YMXyRVskoHajVWekx8HqUcOfFCn+oCV64=;
        b=Slyd++PFhaLmFbHOlbx6MiQc40khL3lDHuFnRKUBf8opEx8sT7T+eUhF0aY3qYZLhb
         /T6/2VXqcSLxTwH00/VHdgoTRyS9i7Ot66y7s9FC79DUeESJNPdyvvzY3ebjvEop9wHW
         kH3JVzZOSntzSdMfl0gMigmcDPiJaZ2zMpxmmpetAoq9d186Q7F1bMZ/Osr5ewu0P1xU
         Da9tDsGF868OuCAnDnX8BcptSc75jm6Y0vg5EvWsBvfTimjIS4XzU+UvLKBegk5qGLQu
         HR7kqWK4e9qtRDgjURIhOMkeB1/mvZSykiNdSvrWHGdsnjvS+X0596uDteeGfqdTGIZc
         Xt7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xHP3ZtH0II2L8k89fmSCrwWEjs844Fq3HxnhtD8iXsybu6O9N
	IKsFbfAfODhuWmtnC9amv2s=
X-Google-Smtp-Source: ABdhPJyHn8PR8kDCRPnAlorro3gSH0HMPMm86eMGt/AQGmsIsu/bP0x4vkQ906TRtjjwg4jx+RncGQ==
X-Received: by 2002:a1c:64d5:: with SMTP id y204mr7893299wmb.131.1591872023271;
        Thu, 11 Jun 2020 03:40:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls2022043wrc.1.gmail; Thu, 11 Jun
 2020 03:40:22 -0700 (PDT)
X-Received: by 2002:a5d:554a:: with SMTP id g10mr9179882wrw.334.1591872022670;
        Thu, 11 Jun 2020 03:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591872022; cv=none;
        d=google.com; s=arc-20160816;
        b=pPuSiVOMtqqvaRik9JRUfhv8jY/k7IuxklhWybfXQ1N8Ld20Dx0WdY9B51ZD4gdjSH
         9qJhxCDEY3A/QgD6ZWC8NJmEfI9FoUh/HaieMeVBm3XMhFDgBSpmnHu8XcBpvXxjRrb5
         4b6zEMkeBhALPMs++sIvmPCaZOb2/P+4HsDk/Uda1w8BM9RFE2ejK3S63mgDxsb9CKlu
         n7Eq8PHtIj7/E4tkAD9+P4iBdvHqdUsdOkG3WOVYzPYnWXCRs+5IxQ9vlZsmzNXSQ61+
         1x/oLe+gpLzXhKEXEj9LTbRNnFqEcdh0hzlomLKB26LkbER7CbUxRDfNrN2/lEGfSo1H
         xaqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dz3aUaUs54r2lsiJR4IRURryLwMtxeGK9xCbr4LAEjs=;
        b=N5ftlOC3t/RcnBzTXxJ0rBH7CuHct4VARyCt95nd84rUyhYaBqCykKaIOVzCggVZCa
         YPotDclR0y53E0SwdKUIjrzQqla3HFX7wb/ehrK5Gvg/oStluS+gBWci2sluAirmduwx
         BfOt1NTWMYdeSzRb5Y8fcSJGa/2AcXN+qVs+JdeFWqJw4ZxXCz1hNPp1hxI/TLtFzeoE
         wNBexezkwStU/go8fVWJxOajN09WaNKMWV953pUmpLgqX4adw84FEIHd2Aip8+M80AUr
         A9RoLUh7t5ul0m1i+nFZ2bjFOI6xZQanA3u/BZ6FN4IdJrKqlnFXiKPe3xEqi8S013HQ
         1ZGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lj0c4vLN;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id g7si166004wma.1.2020.06.11.03.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 03:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id i27so6278855ljb.12
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 03:40:22 -0700 (PDT)
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr3637491ljk.95.1591872022118;
 Thu, 11 Jun 2020 03:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
 <4235548.LvFx2qVVIh@harkonnen> <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
 <202006102009.CB14D7F@keescook> <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
In-Reply-To: <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Jun 2020 12:40:11 +0200
Message-ID: <CANiq72n50OVRtFAQkAmqjaj=dJTP9VqYYHN7++8O_t4cbfaJgw@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/translations/it_IT
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Kees Cook <keescook@chromium.org>, Federico Vaga <federico.vaga@vaga.pv.it>, 
	Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	David Sterba <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>, "Theodore Ts'o" <tytso@mit.edu>, 
	"Darrick J. Wong" <darrick.wong@oracle.com>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Jacob Huisman <jacobhuisman@kernelthusiast.com>, 
	=?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
	Rob Herring <robh@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Lj0c4vLN;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Jun 11, 2020 at 9:02 AM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Is any of you familiar with Golang?

Don't worry about that! I'd expect seasoned C programmers to be able
to read Go (or near languages) -- at least to have a general idea of
what an algorithm does.

It is not APL, after all :-)

>
> @Maintainers Would any of you actually review like this? If yes, is the
> pseudo-code not enough?

Well, Kees already mentioned he would like to see it :-) As he said,
it is usually the way for bulk patches to present the
algorithm/semantic patch/etc. that was used.

It is also useful to have it around so that it can be reused/reapplied
later on, too.

> I didn't log that link-by-link. Maybe because I also didn't follow plain
> HTTP redirects while opening HTTPS links. Maybe it even matched, but was
> added after I made the changes.

It would be nice to have a list of links which cannot be converted,
since nowadays they are likely to be the exception rather than the
rule.

> * Linus *didn't even respond* (at least I didn't receive anything) to my
> catch-them-all patch at all, not even like please not as .gz attachment
> or please split by subsystem

Please take into account that LKML volume is huge and Linus (like
everybody else) only reads a small subset. Further, as a general rule,
Linus shouldn't be picking individual patches to begin with because
that skips the review tree.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n50OVRtFAQkAmqjaj%3DdJTP9VqYYHN7%2B%2B8O_t4cbfaJgw%40mail.gmail.com.
