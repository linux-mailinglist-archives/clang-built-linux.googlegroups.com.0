Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNETTCBQMGQEUHBLPHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 097CE351936
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 19:58:13 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id h30sf3120533wrh.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 10:58:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617299892; cv=pass;
        d=google.com; s=arc-20160816;
        b=ot+KL7pQWtA2EVbLrw32Frgf8Sjdqu/qnk/cNz7/bRbYb/dj9IortLd4VeDD6519/R
         wRdUmldvMaFmCgSGyjFKtL/wunc6MTPs7eaYclCsG+66pgFbB6SOtWbP0hzm1N/66Kep
         9uJkLE3ST7hWDVlJNB+rnzoaed2p0OttQbQmMZjNRCtzPdVdX+8TqN+0vulwDG71Kiyb
         bArnqb6gQRpXfEqKnyYmDSL5RGXVsV4JIFoQ4m60aMu7wbeHtCMx3YHHyNixXsmAQO5R
         QMgqIfqt7qsJDLSsuvdzKO4gwueqkDlOyWEsKFhN6JRjLWz/EfeINUaL6FqCHubXch29
         H5ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OFDR3V4UjaewoerRzMLMEjqBVOhqDmfcKf+0UAhCuJ4=;
        b=zGDZYUjLad0pueX9qiV8ikrJUdhUAHOXZWOvRjS0Ikd9fDvXMgPW9bjprRmsE298j7
         /BXcAt3sA7jCYZdbCOYemNlFB1S8x6mb8cfn7TarLeCNbCgq27K1BUXOETaUHnAY5QEP
         mlSRX6BQf+s/knCLSFfAxP2J9xcZxmgE7DZlcwlIjSwWl11bh6J9Kqi5RnCBAXtmw7Tc
         hrPppxzKs4x37JAJt9WcHwtDvW+SdW4NzUN6hXPMOtzLBLKDCy5/G+6z8tNjGacfKXyb
         JlQk5qTnE/Oz0PViLw3oDn0m0kqZ6sMvMYIfRYh2oykEqzG744loUIpNdv5Cv6S0dWRk
         VT8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qO5Ulpgz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OFDR3V4UjaewoerRzMLMEjqBVOhqDmfcKf+0UAhCuJ4=;
        b=W9edzES+H+b36N9T/MDujJ/+j2eCxYh+rpy8lwn+AB675ust+iMh3pO5C6YKOcYOin
         TILzoZ9x8LJw6GPupRzX6pbBLlO96FHpprm/xzUlzcZDrEXCnt7SiWLKOYb6Wd6/utOb
         9EsMRwoPYbC55DmQw4yHA2kK7wME4cKqjr+fU5lLkAKFXd67NCOkfY7EvR8EnjlP31df
         jVramYZw0YuTh5GVLueXEG4DQeymxNMg8kfTCRrfHSH+0nvy939esQdHH7NYJs6E9DAd
         b/jQL0cE5KnnJTUQYgt7he+Bffq0jBfCbStYLFXxl64wWfrCn7YiAw2UUqcGPe98RFm2
         mgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OFDR3V4UjaewoerRzMLMEjqBVOhqDmfcKf+0UAhCuJ4=;
        b=HFt/dAv0mWxMpvh6BvzUT1MzjLNyNFwr6BVVnbbIvY/RRhIwUNFwjmghq63B7E6WcZ
         eC93QumFw5DCyp0M0r/9M5gPBAWUFq8kjNptSK37120k56nKEyycG/+aPcmDcrAgm1g0
         QIra0/BuTkIahYd7WM70YXRSKhAKa0kLXgjRELmYR2S2fi4ubr3wD/4K4huA6a1ef53R
         D90Gb4d1Hrl7xVhUxJ8oG5gDBXV5I1CEyoFVYNnpzyZo4CibekjoUKFpypQkbwPz3Ucx
         FxtBYdWLFNJhXq6e5s04K4C+XYFFe5aeGIU9wtnOiw3oQLlRsFWl7zdYFtdyx6oRrsZ+
         EBSA==
X-Gm-Message-State: AOAM533pBqS8YA2XtqRtAZslKszrHxfIOqpnlMduhpGCjLHZvZyEl3S+
	SFx2vXF6vI4Z7wbsmPopZQo=
X-Google-Smtp-Source: ABdhPJwvkh7iAo75Oa/s73hS+oN1RgHQcFuRRKKyJd1Xv85QejybG4PRd1kfunMzjypOoIzNvtkhjw==
X-Received: by 2002:a7b:c242:: with SMTP id b2mr9637094wmj.119.1617299892811;
        Thu, 01 Apr 2021 10:58:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd84:: with SMTP id n126ls3308191wmf.2.canary-gmail;
 Thu, 01 Apr 2021 10:58:12 -0700 (PDT)
X-Received: by 2002:a05:600c:3553:: with SMTP id i19mr9214680wmq.1.1617299891921;
        Thu, 01 Apr 2021 10:58:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617299891; cv=none;
        d=google.com; s=arc-20160816;
        b=0Lgc+KOfuhCCeRSlJ6bGTU5lAbs6as4sSbYLRIEv+dE85rSL0k+lkq+48SvbYUkwem
         /YgJFm6qfv5+8A2/atbfIW0RqzjuYWybxr818CSkkKNfFcpkV+tC/OoIu+JlYEMmUbXv
         Ku3CPfK+X4DN4+pbkMOlXrwNfbuR7LK0wIfsdeM61qQHjsURuC5wgljen8aQerU/awTA
         PqsElpRNZAqKf0eJvF5EDf6RO+T9eSJmD5EV3JW10qCR/E0uFgtR0GZ78HxwtXRcjb5U
         WBIKDz9uzx8ODxO1rMAqhI9/gugiEa2rzUIju5fFwoNUfsnJdHjalWMP4wc2yuaVPtSl
         MjtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wRsI0WuBZT0+dYe3C+aP8VhdesEThjYg/M+ybTrxUX8=;
        b=ml1QBAU6VxXKjBU32nBmHZQbX5j/4OAK0OZgRt1iUz0lRv+g417W98ZeittYq73gEo
         9PpaC26mxAo44WLnjFRYXMWjfjavAg2kEHBpAK1aw0DY7CowEcC4MhjSUdkiLfgTwc2Z
         33XjaTOgQVU5MVFTEUyKYqoCWru3O9PpTpmiD2hu1BoUBI7XNAhpm/nXBQJ+d7wNxASt
         d3K6GaQj1cFSAIaxihNtHPkp3Kq0vmLhqyJS/mKDIJsV1jggJs4q5VytCXd82/4uXW8H
         csuxZbZUI8Y0cMfNH5q3Tj8JIevoceh8byrMM9RXDGpRUovPojfcxBnTOnk+e+zi4obP
         i6Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qO5Ulpgz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id z202si626542wmc.0.2021.04.01.10.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 10:58:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id n138so4122268lfa.3
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 10:58:11 -0700 (PDT)
X-Received: by 2002:ac2:532c:: with SMTP id f12mr6619118lfh.73.1617299891458;
 Thu, 01 Apr 2021 10:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKdWgSwA=A=2dWg+UhpRNyngigrEdOH+y++dZ-n40ryffkEpcw@mail.gmail.com>
In-Reply-To: <CAKdWgSwA=A=2dWg+UhpRNyngigrEdOH+y++dZ-n40ryffkEpcw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 10:58:00 -0700
Message-ID: <CAKwvOdmHeM+Qt7LJ7jDeTOETZkuLZcT6TnpnK9o1kKzPjnHf5g@mail.gmail.com>
Subject: Re: Infrastructure errors with clang-10 builds
To: Vishal Bhoj <vishal.bhoj@linaro.org>
Cc: tuxsuite <tuxsuite@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qO5Ulpgz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

ACK thanks for the report

On Thu, Apr 1, 2021 at 3:06 AM Vishal Bhoj <vishal.bhoj@linaro.org> wrote:
>
> Hi,
>
> We did an update to TuxMake to 0.18.0 yesterday in TuxBuild which need an=
 update to all the tuxmake container images. This was causing infrastructur=
e errors and build failures on builds that are using clang-10 toolchain whi=
ch aren't being rebuilt currently.
>
> We have now temporarily rolled back the TuxMake update in TuxBuild. This =
allows doing builds with clang-10 again. Please retrigger clang-10 based pi=
pelines submitted today.
>
> Regards,
> Vishal



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmHeM%2BQt7LJ7jDeTOETZkuLZcT6TnpnK9o1kKzPjnHf5g%40m=
ail.gmail.com.
