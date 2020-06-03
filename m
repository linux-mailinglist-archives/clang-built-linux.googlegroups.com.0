Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJPF4D3AKGQEYIWPXUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id EE66A1ED912
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:30:46 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id x6sf3387514qts.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:30:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227046; cv=pass;
        d=google.com; s=arc-20160816;
        b=hjwaRuiNWGDNxwFxYWg2uNF149cURheWefLjS3hFOiqa5JH/WzMN8qK94nIM5VOm77
         GEOAjqwKz9szPYMhHtNI71h+K1DYMveeQaKQlH0Tv/w4GjjxU+Z83qSU+NuhjLm3pYMt
         B9r8ptgo8f4ObYxud0kEYdDrPQ0g3E6icPCSya4Vq7BQSSEZppqqtT2W8Py5JtF0LQMu
         mhttmTE3TqYI4LBeZPct0TQnpGyav98zK4vrbkZ5Yez3n46PuHVU1iSmePRShI+PBv4o
         NaKZ6VHAjH3rQYfrM3ey1neBuMiYzFRXf13NdI9gvAn/U02O9iccWf57+YzpMXpZdASq
         t05g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=FzgPVi3wltakiJgRk86ZBdiWHBECC89FiwyiSHgGig0=;
        b=YxI2akE2n8FZ9WnP+NAhQkyhtZT30XXqFZP4mdzC3ozBZQkikByIH4/djDAFUksrmp
         u8YzFEIJyiwyQwQy3u/Ya1GccPa9ZEwJdSqK3L/C/ZKkpVE1hUZEwFBYttwDvmOf2dvY
         CgtIZb7NCvZCVKIfvlP0xMiuBQ/7WV5F3jdCH7Bo+seMRX9IPLaVknn4jDrXWhIH2v3x
         DjhsTEr6h3keR5jfcdglWVSperzrBTOJO9gZA+54NFpYUPEqXfgQ3goUrOFvB/Xtkwla
         hIiVIpNWGKc+zDIu0Utfz9lKjEGslXt/vcKlWjUB6UPjp9XKnnSlEpxhqvZlS2HfgRjj
         6TFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f8Ae+3yV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FzgPVi3wltakiJgRk86ZBdiWHBECC89FiwyiSHgGig0=;
        b=eheSENK+MFN3Yn65ZbH4EErol8zNHCnUQo5FWuMtzqIkdJR3D8K5xNXauStJF1UQjH
         PRfHgUxh0m6ixK1PVZvjMqbyOwefvUOyGgjgT+i567NLVIIPFV+CSabtCLjcRxpPdp96
         pjVevWn05FVtyqrUg4kwcScvllZ244FeouU3KfqUAkeU6Ngy2STN/29qJESaxdKSTOmV
         30sUlKjwor74LtftCSRF9Zi7WFtOvaQBXbqhvFBNZZmgdVXpg1cFAzLqUcYbfYOUy3nb
         sWi6G8it1pJ2jX8n0HQbcl+FivET0pRZLqyld11fPs1j7fkJFP9bYi1VHX2UXaJk5jWl
         NZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FzgPVi3wltakiJgRk86ZBdiWHBECC89FiwyiSHgGig0=;
        b=T0rjWxuKLZNIOC7sqNVmVWlpqz8zVzwUY/l8WteTV/NAMUeULZT93sW0Gj/LoxPWUY
         gt1t7qcf+NEakWFC5Ln7TgY2SDQXSF//TbGeV/obGga6eWq0EqBNwCqJr8OZOkC9djBg
         jZ2CY90EnT/UcVXLVIIXY5z7L9ZgMWUR12QZFo6No/mLB16IGXVWiC08Wn1h14VNTOS3
         Kv+BoC0qsPKQDVkAKpctGvD4wefKFNuv0knTysKA1WQ2kmA2Nxk8XRJa1qt1wqirkumI
         quLsZTh/fZA7sXRzwBpSB+7Z+cTj1lD4tXBfekG4xDcFl/E/ZbkTFe6Dcwf9LaHYemEi
         pSnA==
X-Gm-Message-State: AOAM533aWrDY7kNr3yp0MSpePzqGfR8lKXTFBwzZWQDAe1qd5BxHW2yZ
	ywcF9g9IeYUzbTK9p9WEM68=
X-Google-Smtp-Source: ABdhPJy3afZaujnqnhN9kR21Z+nk/e3u8bKZmt87fEATGDvxZ1UOFRpKFY/Iltq0aXNaqZj7Q6N/bw==
X-Received: by 2002:ac8:2979:: with SMTP id z54mr1891670qtz.262.1591227046059;
        Wed, 03 Jun 2020 16:30:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:55c7:: with SMTP id bt7ls948014qvb.3.gmail; Wed, 03 Jun
 2020 16:30:45 -0700 (PDT)
X-Received: by 2002:a05:6214:2ae:: with SMTP id m14mr2258618qvv.185.1591227045699;
        Wed, 03 Jun 2020 16:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227045; cv=none;
        d=google.com; s=arc-20160816;
        b=iS76ckmoT29b1GpAjCrJMmJilAcPOqEAkmiWqSQVL1SrKOxSgH7hJwQmYItNgKetqU
         IXgElxFtvnCWbSiz4o2DPQCXgaqoH8+sms/lboWf109Q9vXTZj8z1JZxYwpgVZv/sqeb
         /Fa+276aTOZXLPUK6PfwNXrM7kCerqggYDs+Gjxzv6IMBn84apMvZXMlhuQG+CYV/UKh
         yvuUtLCdFa8NjViiNgEUnpztzW154lN78cYHnM4tf8x/WfAbgb0C2TZP4ji0AvSkIHEU
         Pjlf8We9jbJZm8rZF6FD1tGPmmaHEouBEhG/B1s+j8pv1SPO9tWvl/bEwSifugFi3uQi
         edbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=+OwPQNPwXuoP6yn15PHFm62owLQ0WUxKO64ZiIsDYJk=;
        b=AEYcp2yBp6PjSV2RCpXTZ848tb2s6dQ6sYIVCrjbZrUlMew+soLPQ5kSyWYxUr57yd
         x8xDBadka5HmYx4LSX66sktY96/k5CAqmOZxEBM0j3AAdrQ0xMozdSipJClMIWmy8oc7
         VS1WUI2ePafIGZ4/X/Ikyhr0u2m+k0nbdNIxvOn2pbLibvaQGnjdFCnSdgQ294t8rUkN
         SLyTLbcsEQqqvI6A+IVss3xOi1TUCjx19QB073nv2OB6p6H8ldKJO+Jf2BiD61eiCstM
         MqpPg1BnjvwrGoHp4Dy3LMPzmXFocDmApdnhljMrbtIJeVZ3ayVIQl4IMtLl+RDfTwSI
         KmVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f8Ae+3yV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id v16si245593qtb.3.2020.06.03.16.30.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id s23so1163949pfh.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:30:45 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr1737177pgh.263.1591227044549;
 Wed, 03 Jun 2020 16:30:44 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Jun 2020 16:30:31 -0700
Message-ID: <CAKwvOdm0GeJQd_pXsMrnW7GgcYRk594LS-=0Pi6+ymCH3hMXVw@mail.gmail.com>
Subject: outstanding question about vfp
To: Arnd Bergmann <arnd@arndb.de>
Cc: Stefan Agner <stefan@agner.ch>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f8Ae+3yV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

Arnd,
Can you take a look at Stefan's question:
https://github.com/ClangBuiltLinux/linux/issues/306#issuecomment-590554901
and respond to the bug?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm0GeJQd_pXsMrnW7GgcYRk594LS-%3D0Pi6%2BymCH3hMXVw%40mail.gmail.com.
