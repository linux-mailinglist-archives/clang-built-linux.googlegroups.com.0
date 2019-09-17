Return-Path: <clang-built-linux+bncBD66FMGZA4IK5UEA5QCRUBAIUL4AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 97582B44DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 02:26:24 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id d1sf934358plj.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 17:26:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568679983; cv=pass;
        d=google.com; s=arc-20160816;
        b=kUWyqQFqi5dle+8MW0eu9zMQHZle35GbzlafjwprdrF0lmmlrz6EQQ30aWXI7AY+l3
         zf9u+Sznc88Grkhnnudm9hAYcR1OTpUbVmfjQ4/pL2jjyqsECsO2FCnQrkqloDLUh2++
         8GFVupD0OzgpfYZjMsZKXkQ8tYNaJf2YgPmYR/c07yjgXL4NruqxdS+zzzpzrRJrwugr
         vUy9D1p/6BbrOJj1eCH9DZw6NSvImDZQ0MDDqFEKMSWOqMIE3nH3Vude8Wji3tV/zrnW
         Wx22mSQnJg9EB2nv99bq2tv948uJm6/qz3t9z0mX+Q0799+JEGTvZfXWdppDMPsgPtXJ
         HlhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=QlzrRICGcxSvpZrUd0EJZvFE0P2H+2iF1x8qR1hq+DA=;
        b=i8HaJaH1aVOEAWN6Od+QGnT7Od9AJ7GzFe503VAx3Ou2+qW4uq21Ulz1KGYnkKdBG8
         pT+1zCbJMGt63zTd4bqU8Zito5zAyYFiaWLioO/0fRKxPKQI5d1AirlENbzHEIc9kKHd
         qU22YxTJnikRxvDTnbp8gILDWPtaO3KgOweswZzW78Y5IBU4TUXwUWofo+DB6eke2SH5
         +DFhkz0X4BOWYe1+y+KM8v77bu766L0eORdJCOWsxanTeA6lLZrGoLwgW1hKBgZY6QaM
         PW/XOywtVj/6DZ9fgBUicvDzvJ9WQEv91rZg2T944bpEfDM926ltWT1vghOAVEigsfgr
         kihg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vZwlKnrh;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QlzrRICGcxSvpZrUd0EJZvFE0P2H+2iF1x8qR1hq+DA=;
        b=rJ+0AFtJWCx3RSuHK8sax1ybtd9w11KFFAplOGWUX9/nLtm0w0LfGVZyxH/7wb7+67
         64WKawl/M+RC4qVhLEMRKp7QtEgH1fI2nrNa0iphQQ0IDfPzGXycaHNk6pn4Lbor/48L
         r2TyqvAXpXrWYOjtSc8s21BlGsKDfTEPdm2wC0KphSIsEq/Xp6zeRokylq6Ds8qrdQsz
         Ow57BU0Y0ewP4J2pwjTeGTfKKWkc8BZ+JmGF8PPdePmy1MonaiKI9culAkSVdm6NY8yf
         QOu4pA1QSTkuRVr96OfBHDFeJdAL/r7TIr1XiB7VWB6gFBwr91iRPJZ3X2YbIeYL3/VA
         4Aow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QlzrRICGcxSvpZrUd0EJZvFE0P2H+2iF1x8qR1hq+DA=;
        b=ce9slxI6FQO+jT7KajHfkpGOcfu8jbjiGNN5t5PZAQDBlfsLCskTMKhDW94oZfXEAW
         i6CjlNAnbt9xUYrg7JREN+YkEK0c/S+FBhhBJK0nscg0614eYZmV73vBNlR7SA2ZeXx7
         u+4k9xAPSeW4qVUfDGAz64zLwrlSxT+oZz4Z8Y2R7p00JMawobcVmR9zBiJNH4wZhP7m
         hAz/5M9EUFQrJiyrCss63OltjFKEutJ/Bs6vP+tL6yCUmcPlhK2StuaXPmxYX4NqW1pG
         rBZHUA5Hcq5OLU6nlD2QDfw+aE8IeflVFFMfNSrEewyp5gUbZ2gWvRM3FhcoLwoqKzT/
         3SXw==
X-Gm-Message-State: APjAAAWMIoA+1XLYA+EnljpG/w64nAyMPExje1SHuwPXS1rWR3RZYapN
	78h0ltsg7xMfzyV7hO1Xz1A=
X-Google-Smtp-Source: APXvYqy9MqKQfTdYMkIRbduBfpNTs5JWzZLX4qfimuKKOahyZPC3Jk7vrzyQRAIWzGK/XFYWc/o8/g==
X-Received: by 2002:a17:90a:bd8b:: with SMTP id z11mr2040601pjr.36.1568679982856;
        Mon, 16 Sep 2019 17:26:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c90:: with SMTP id x138ls290536pfc.4.gmail; Mon, 16 Sep
 2019 17:26:22 -0700 (PDT)
X-Received: by 2002:a63:3196:: with SMTP id x144mr825449pgx.284.1568679982332;
        Mon, 16 Sep 2019 17:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568679982; cv=none;
        d=google.com; s=arc-20160816;
        b=QOcYosd4j5uxXkWE1oMbAgmbZfE3evH03DoyaarY+zZ3vPbUunRLVtBACVDLFdfD8x
         sn/rX/H7J++MXDuBKjm0QNfUTXLIoMGmTSw45tkDqD5jGMhbM+lod2w1UYnkTQizpZqI
         +8VHeroVgETth8qke9YNe01G1qF3YT94xzrWuBRYgHjmy6GhsnyeM/loiXhA/uhIPJWY
         E/LwInnv7KvI3tYdtRTVrp9/L23lkJhJkiIQlIo2Z2XO+wc51bewCs00MmVuPs+NCLy4
         ZY95MtFETgjHk/+kuqs5vMUnAFx9b3waRvNJkEGCiKqcHJkQz7+2Ue35ykGoeJcU4wYw
         uf5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EazZPEHmej1NULLULfl3NcGRVuxtgFPXhs6RP3ZlmcI=;
        b=eolbEGPOA8GKUROTCnkE24nZbA8Ud11mx2AF+j70flGvH6pgdx0UPE4jhFTmPza7n/
         8ELEPFWDLpHb+VWf3X5FTjueU6qPoKNTeRv1KtI4QfqJyjoqlu/z6/Xauamwjji1T7Ji
         DabMtpslHUdPeqm2JZ6pZOKPFhdcgl+dmZezBiWRGdSh8kmSnldSyBxvoF2C94LAVVKe
         covhPm6UjanQGLIAnNz1nMA2G2IFgp7Xvqrj8FLs3X2qW+RXSQBb8/GavaS8CiZ6S+NN
         BTm7Nv4fygPV3L9Vb+WA4atFMBtCPD2UY0t8HC1w4CQgdmq41dkfEoIQtk4NwOfiUzb7
         ltjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vZwlKnrh;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com. [2607:f8b0:4864:20::e33])
        by gmr-mx.google.com with ESMTPS id x2si97951pfq.3.2019.09.16.17.26.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 17:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e33 as permitted sender) client-ip=2607:f8b0:4864:20::e33;
Received: by mail-vs1-xe33.google.com with SMTP id b11so907427vsq.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 17:26:22 -0700 (PDT)
X-Received: by 2002:a67:ec18:: with SMTP id d24mr414525vso.80.1568679981000;
 Mon, 16 Sep 2019 17:26:21 -0700 (PDT)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 17:26:08 -0700
Message-ID: <CAGG=3QWH6z9f9qWMFXpEXbxRxm=yJRvHMyu68sr=1z90TpQ5kQ@mail.gmail.com>
Subject: [Announcement] Clang-Built Linux Meet-Up Dates
To: clang linux fellowship <clang-linux-fellowship@google.com>, clang-built-linux@googlegroups.com, 
	nhuck15@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vZwlKnrh;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e33 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Thanks to everyone who filled out the Clang-Built Linux Meet-Up
Survey[1]! (There's still time to fill it out if you haven't yet done
so.)

It looks like everyone is available for 7-9 February, 2020. So let's
make this our official meet-up date! Many people are interested in
giving presentations, which is awesome! We should be able to
accommodate everyone who wishes to present.

I'll come up with a schedule for those dates and will send out further
details in a future email.

Cheers!
-bw

[1] https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/viewform?vc=0&c=0&w=1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWH6z9f9qWMFXpEXbxRxm%3DyJRvHMyu68sr%3D1z90TpQ5kQ%40mail.gmail.com.
