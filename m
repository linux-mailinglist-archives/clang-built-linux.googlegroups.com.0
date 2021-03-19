Return-Path: <clang-built-linux+bncBDRZHGH43YJRBAXE2OBAMGQEGWQZDTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 519A5342539
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:48:35 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id c6sf25902074otl.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616179714; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8lcu6ij3+wgOUMWo/qme74G6i1bgNX1oYR9NHiM3Bf6JIWO6vzddvJGurtcRWskr+
         IaD45BlDxI4C2deu5n/x+8mRJe5xy3+TahHPIQ23xbNYjI7I9Lb5TE4fJ8mYSdXK1N8S
         c+L/bJaxkByeeBFJUdoNcm/Yhg9rqmZ2bAbDHt0ieEU1lAIqt22NhQw+Y1Zo3QTAPfHR
         bj3wNSZs7D47pVZ4YoaioFC61+kxR5H2INLtJfvg41kSk2qhSLW+qoMYvQEzAY/cOvP6
         54zzqj8EDq31QzEhqO3A01N+DRkaVTk9LiMGRe2x5+mUhr2/V/Ue4rySrx2eoCE4y4Ph
         DgwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+HBQmvcm0QzdYUfjpQOGF96fshaFb/ARNiE96HNrFxM=;
        b=gj7xJ9FP4dU2EaOUr0FuYAt2ANkDingkXnPyTtmOoNYDf5WTqNrrcZ4D/1UcbnKMM9
         bKyvX0XUIsJPDeZbVBka+VB4myxYTlNIss4CNneyTi/DEU6W+q3RwoOwQG4Le2aXoQ3x
         /X0iYuh+bW17l+Sady/1CHUaiWg2t5gVgm/OeHILM+ZynweoYTuHoBtXv2lrZobVfZBU
         krRo1b8pdUb0CGODF6o8NeXxAw46UvpOkFHG4NxUrr21mKedWGt3fKmyvdxrNtZ/ODzy
         3tdr7PZZazu8Ro0lpHmjmUjL3nI+D7AdMktMspQn64wTt2sdvrxgb/HDTMt43azoB+Ua
         /G1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D/4Lb6zR";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HBQmvcm0QzdYUfjpQOGF96fshaFb/ARNiE96HNrFxM=;
        b=OFo+GZHkuYt3hdPQkoMf642xAg/GAv4/8ZQVScvXcxw7NBFK4mkNMND6Pp6Cylquck
         tU1zQojPXpKkzLQskJ0PORjN2jQb6rj/aiFco0+x7NsWzsO8NceHPmpkDmLDgY9GJXKf
         rd6qrBjj+ylM4/X52Q8/7WoES3erYc7sWFIAULLDgQUGXfukP+qhhRql4AR/Wy6asFkh
         WW88gAQU6MtqH8eKa+jYk3DIhY+urwO5jjaBll0QEw5CkYTpuvDx74PkryMZEzrw05RK
         0lMyK3cMz38Gk8kP2Pshpp7SUZPJtRdzr0CQk/x5+X4Hv8WqzIcHuU8M6Xytztp7xvFr
         9mGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HBQmvcm0QzdYUfjpQOGF96fshaFb/ARNiE96HNrFxM=;
        b=rDFI+WcDy0fwd3clOIw3nj8y7OaGwkynwAkYZJDH5Zn8SRGKIHi2yAlbmuuQxKDHX2
         ydEpvo1iuD/H9H/R6V6KfRKgrNbc/7NjkmFKZ1PZHDRzCMT33Cigfa3v2Z/lUEP8WyFI
         0pKmxlsQXpfN4pNQ8BmmDYTp/ASKviERZK/EH3gUCZD6HM/NGza0qOLEp+IQJ354/w8r
         b8jyp+Vz6xMsw7ThUFzVHyHNqq2Ruwk025SW6hXpCQ2dGqtCXqtB+kj1h5f+VWux2w0h
         WOVCSByWv7d4KGcLpaLQNEpiW5BR0felDmPYWwwtfKQZSe6tkIVwWHGdNr8Phew/MUej
         F5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HBQmvcm0QzdYUfjpQOGF96fshaFb/ARNiE96HNrFxM=;
        b=a7ovSxtMGxT/4UqDUtB2IJUXSoqW9q2SNVUBDEhB7fxxLuyaFwvslLIRB8LrG7MgT5
         0pBcXk62dwo5PFEf9UNAE7JQ5YpCpf9pCVHzhTadTyKrzXbTKiZOUg12FAMaj0C+0hHy
         5bHNsyqDnMeaZEOt2cRt9MFP0Ei4fHIv8Cz1H77mpxfQeZ41/VcqYWOtq0yfnSyJEJ9A
         H+O05sZpIn+4zyTg5aWWGj9xjDAOpibngbjidth0LAwv9LJVSQwRYcQBu7bPWSH4zLyl
         x9vsito50yzzCp6EByGV6N5+RA4mO5uTzpKJsbK+/CMPmETjP4bJhAMDhgmaP35KyVHN
         aHoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pCwLa2EEFAHHbDRB5z/GlM4jnSK2m1rOzXKuk55AoG/WOWGdG
	ZwCw5ZFp9l6gAS9R9NcIAIY=
X-Google-Smtp-Source: ABdhPJyWmMtNg0fimJWbp9GFgJw8JQad23rJ588sMQkV1qSvH+kVcE7unOd2GMxX3+KfhJ/8MtXNyg==
X-Received: by 2002:a9d:7a45:: with SMTP id z5mr2310650otm.31.1616179714335;
        Fri, 19 Mar 2021 11:48:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aad0:: with SMTP id t199ls1649645oie.7.gmail; Fri, 19
 Mar 2021 11:48:34 -0700 (PDT)
X-Received: by 2002:aca:1b16:: with SMTP id b22mr1958107oib.153.1616179714038;
        Fri, 19 Mar 2021 11:48:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616179714; cv=none;
        d=google.com; s=arc-20160816;
        b=sv2R2IPg6Kvu6IYg+TNOtVnKkhfAjzPalaDD1DN/AIq9jYC5DlnYXkMBN0ldMi18sP
         Sw1BP8c0QuyrQIAgOS4ghbVk6UWbjTZZnNSRq2wlqaME05/ZZYbHV/uVUeX2ofU5sYgh
         XQcx33Sp4rfqtOZmBEX+Gko5yjHZSTLW6eIjrIB0jdl22EWiQS6/NSVX3PjZ25DaW0b2
         60/s6PqUevNhkOfupXQ0dh9aXZw5F54OOE55jXjkLM+K2CfIHOWOqOj7+OvnhkZInvEF
         fLSkeIXs7AYfkly06x/COtMaRFIoz93PpUS3lw7+7Fk1GHtnYliNgC0BAQdcaQTNBGo6
         EgxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9Jx5P65OeVrEQ8kuUn21jtcWHeaKuOd31GWQKeBE+FM=;
        b=hrhHHhdUIWvSrVOxcUUW6pwuhclA4kgYUfDodORkiNuna1McJ1f0lTE1hfVS19Wnad
         P8AFwJnxCSNSBrYWnAPW1km/iIzJtJOuqoixYnkxmoKD7g+NjEfn9aXHfXXxA7ooPjgV
         ob+ySW//j+lgV3bIKDVOXIM7VYFFU0HuVkZj3gEAv07dNTCBt+6Bl7IzZiudxIueEJ9Y
         KS88DCrN0IQ9VWGC5ndA89AasDXclZHzbXEzZKxIbNA35+mnRdrFSA8LaZwr78OxrZXG
         oRUJPpHqA55x6gvVe8wxCd3h0f+rTWwsHcaLCMkrTfOrEaEiUfjZU5qQJ/d7SsSUekBA
         Yplw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D/4Lb6zR";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id a4si282941oiw.5.2021.03.19.11.48.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:48:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id f145so7266732ybg.11
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 11:48:34 -0700 (PDT)
X-Received: by 2002:a25:844a:: with SMTP id r10mr8760319ybm.26.1616179713902;
 Fri, 19 Mar 2021 11:48:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210319183714.8463-1-ansuelsmth@gmail.com> <20210319184234.jsudy6solmtrq6vz@archlinux-ax161>
 <YFTxOcf56lPBi2sb@Ansuel-xps.localdomain>
In-Reply-To: <YFTxOcf56lPBi2sb@Ansuel-xps.localdomain>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 19 Mar 2021 19:48:22 +0100
Message-ID: <CANiq72=sEtv6-uMqY5QqpHSEqZnMj=6VrhgyFE2a=wZy=+_SEQ@mail.gmail.com>
Subject: Re: [PATCH] clang-format: Update ColumnLimit
To: Ansuel Smith <ansuelsmth@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="D/4Lb6zR";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Mar 19, 2021 at 7:45 PM Ansuel Smith <ansuelsmth@gmail.com> wrote:
>
> Sorry, didn't notice that. Considering that checkpatch complains and
> some reviewers actually state that 100 is the new limit, I think it's
> time to update the file.

IIUC, 80 is still the soft limit, but 100 is now the hard limit.

Cc'ing Joe.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DsEtv6-uMqY5QqpHSEqZnMj%3D6VrhgyFE2a%3DwZy%3D%2B_SEQ%40mail.gmail.com.
