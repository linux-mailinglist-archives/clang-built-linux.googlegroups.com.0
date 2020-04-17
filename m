Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMXW4P2AKGQE3I2YTAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7F71AD3B3
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 02:41:24 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id v185sf604111oie.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 17:41:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587084083; cv=pass;
        d=google.com; s=arc-20160816;
        b=KsNR79MpQXbwhJYP3yFcTCUsmfp7BWswgV9y1FZot29Fq8HR2N2uYAaSQe6KLDnP6Q
         wJFTSnYL8p3BBToEK/Q6wVCu4tzANIlvzoBsJOoBNmrn+MgiHgIzi1as9D+m5uvSGoMP
         3dr4OQ+UVNq2NG2anFlpulBjDlCd7hpRsZKL2DsWp8n1j31qNVedDIfTf89e/2aJJbnC
         DQk0N6D1s2yDkcL3i9m9kIFqTctl/Uiicg0u98yHlJuItC6ayZjpSVUfWunpRLt8qIeV
         7YBJt2VEcP4OG+zf2VkYnV2EZnm8+afckFSWdGf3rBV5PGqRrSTGMKNCPlWQXwNOdf0p
         W/Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=NfIUisdobZ32akJVT9gkcMfKamaeNrYgrdk2ylBf21c=;
        b=HzzRGLVCCAGept9xZ26qRehQD8hb8JVLFnh2kO0uTLDafUJFpq3pCnFd/VY0DjL6m/
         QPR0mhng4WH5Bgpl2MOJdaiLksHQipvMbOMXKFfrbqOKXO1GrXENWA8M5Yv10I0LUdsl
         +kbXIkEZIfUZG1qOJxdMvnNmx+Pu3xEsSPNCmayx1xt6SViWj4WkGTga7etbOgRy325I
         3R1NqSgX6zg5gvYk7oyQXmjjqIMMk5852O/YLLJLA5pJhWKFI6Pm69CBDdtUlDhQFFgp
         WuTGdisEwSwmtK+rz4hV6ElEtSi++VsMxrh5P7MPzGoNqGV5+4wTBGoxHVjwlJwQQ4GT
         M60w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYAgdfU8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NfIUisdobZ32akJVT9gkcMfKamaeNrYgrdk2ylBf21c=;
        b=XdbtLIzWJulUyoD8KZR0zHR90Z78C1NfEBb+6ZS2lH6h52yQZbE9d1EEuK7BHukY5z
         sKoUIQ88W2oz1jIFfDcHPOs2XV7Bw0Z5k/1J3AuMgIyNWkSsJCsoWlugITtZzJd3I02p
         c3YQYRoLf4Ts/JBZIeyR+zkoID42byETkoeuRlLa/rg8smQBQUhwZBLsQYLgFrNOtAMd
         uzWCAdJWD8peSbw1d16oVu3sWryYIJ1Dpaa5cnyQz2+3dKwbZDuH6ZajlUA2YZnTRZIf
         lBlCYrWzb70WUwlhSgcH/kOYOtBO4NBOBLqp6GJvVaDJlARhVH5eWIf/AUYhL+b0WKNl
         ToLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NfIUisdobZ32akJVT9gkcMfKamaeNrYgrdk2ylBf21c=;
        b=qO8R+xeiUwHfEOwcizQbBHNqlXPAKIgZTRZ8OHOi+HJmmOVPvjvLCuRxyVNFq1qvAl
         HqU1rvH2wWxkFO9Ye8RMD2RNVLhNsyEYaNcLW5JOwI3GPrtym9cZqY5aTvwwQzdQdyw+
         qmzRC3Hw7VEPsrGsfOb8d5Bd6SFAhAKzP7rSNXlKxm4qfEEJCRs/yRWvplyFzNOVjuPX
         ydxH0yAQ3Fm9wN1NRLZXu5KIWmvD+4rBfzuAuymKXisVULULcmP9klKZaY/z1XAazmkR
         Gp+CAEFxxEH35cVaEV9/qsCyjyqtv3cszmc0/bxF5X1O2OX0dw5DrZQNE0BI7NfpTY6R
         5zZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NfIUisdobZ32akJVT9gkcMfKamaeNrYgrdk2ylBf21c=;
        b=ltc4pTPZZBcpCvKhUkUhXOozQ3cV1kQC3eb3MyfOqjYYk+nBj4lMJG691KeAaUXtGl
         v4ArCcB9m1Oz+ZY4fP5PXSkuQcATkOb9x0CxUsyY63mbYyJVh+rV7gi6FULxFMyobExw
         QE8i2i2apXJk4tgWkTkal/o32qfXhkeVnUj9PKV50//FIY6GOuHb9fa1r957v3fay06R
         TsL1DyeGhmX/fMBiSdDNzHH8YkNGBTdpIiriRDVwSsOGpMApGSGx+NoXuL2ONRuAdA3K
         7pPCp18J/5nGF4D3ZdAjHE8oX5d69wn9TV+MIO8zMshDf08TcfH+vhNJTtp7lqFjjo8V
         cysg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua40rX2fOS6+dUNUY4+yS8H2r4ZBYvd6djsI/8oYq41yJbZjGqe
	HhAF5BYyIMZrGf2D/S/LQl4=
X-Google-Smtp-Source: APiQypJTVkkYHzYMAqfoZ1XrG0GP27hOhKl2uhFcH6+IgvNL2hiHAkOMIZagZXfPGNOoA3jC7QUooA==
X-Received: by 2002:a4a:be89:: with SMTP id o9mr578186oop.20.1587084083109;
        Thu, 16 Apr 2020 17:41:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls129766oif.3.gmail; Thu, 16 Apr
 2020 17:41:22 -0700 (PDT)
X-Received: by 2002:aca:b1d7:: with SMTP id a206mr558059oif.97.1587084082230;
        Thu, 16 Apr 2020 17:41:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587084082; cv=none;
        d=google.com; s=arc-20160816;
        b=mFBWU4ORK4o6nPk78+F9wCYZkQvjHVmOh5W3sOkL6m1tGCYbAExzMTpJPbxBkQORZw
         nUZ4U9Dvio+XOqrqlCLSWVfniIHDZiwpTUI8lHBhHN+koVSjBQhaY4xDy7CoE5AjWrz2
         iwWeAAk/CCSniww8QB+Ovt3pAnFIZKAzxVCbT4+NIvV/jUjeU4MbBkrUB1adi8jpbYhb
         TRLIPcKO/+gs63icKf5WJAYlWOMIPm74g3gdYHkVu4zImGJjl/KFWAnYRiPDj+fc/VeE
         Shie9XjbmG6RJOr5jK4S6cScg5/xK8jTyO1sSuLJtnUXj9Q+XH5BOYduRAPa6x4ysaLD
         20LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=jaxzzAGgt9b40w7dm+PLMrbiJc5E7EIOZfTpiPld5dU=;
        b=li6YQPiPLKqPB08GArxLpwmGzsEl+RgNqRjNvO9YG7pvixnhLVHx3dZAeil9135fj/
         l4fq0s+6D5gvaX3os18TSft3NpiqJ+NO1c/M5xxArEVwrqQGqJCLvH21JOvnWVhibZ/N
         wNQPTb68GJZ7UegOduVy0YIg06S73f67SD7ytZkqU5cvJRGJ6Qyu4yrBhV0Q2pXOWPKu
         TfGFuUzrXZzODkozU/xm6xO0m1N2UD/dmhCWmpoVcZB8bAvXZKJ7VNC4zVLQygy6zpIR
         OO+2lKV1dU7N8ADV0LSTWcqD5qnCuRGdNjnr3lOnCMhDGf32V025OwRD4hQXAoMyGoeI
         /f3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYAgdfU8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com. [2607:f8b0:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id q18si1030301otg.4.2020.04.16.17.41.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 17:41:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) client-ip=2607:f8b0:4864:20::32c;
Received: by mail-ot1-x32c.google.com with SMTP id g14so167729otg.10
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 17:41:22 -0700 (PDT)
X-Received: by 2002:a9d:a55:: with SMTP id 79mr659666otg.295.1587084081906;
        Thu, 16 Apr 2020 17:41:21 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id i21sm5809655ooe.26.2020.04.16.17.41.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 Apr 2020 17:41:21 -0700 (PDT)
Date: Thu, 16 Apr 2020 17:41:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: netdev@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: -Wconstant-conversion in
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
Message-ID: <20200417004120.GA18080@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fYAgdfU8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

I was building s390 allyesconfig with clang and came across a curious
warning:

drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:580:41: warning:
implicit conversion from 'unsigned long' to 'int' changes value from
18446744073709551584 to -32 [-Wconstant-conversion]
        mvpp2_pools[MVPP2_BM_SHORT].pkt_size = MVPP2_BM_SHORT_PKT_SIZE;
                                             ~ ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/marvell/mvpp2/mvpp2.h:699:33: note: expanded from
macro 'MVPP2_BM_SHORT_PKT_SIZE'
#define MVPP2_BM_SHORT_PKT_SIZE MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_FRAME_SIZE)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/marvell/mvpp2/mvpp2.h:634:30: note: expanded from
macro 'MVPP2_RX_MAX_PKT_SIZE'
        ((total_size) - NET_SKB_PAD - MVPP2_SKB_SHINFO_SIZE)
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
1 warning generated.

As far as I understand it, the warning comes from the fact that
MVPP2_BM_SHORT_FRAME_SIZE is treated as size_t because
MVPP2_SKB_SHINFO_SIZE ultimately calls ALIGN with sizeof(struct
skb_shared_info), which has typeof called on it.

The implicit conversion probably is fine but it would be nice to take
care of the warning. I am not sure what would be the best way to do that
would be though. An explicit cast would take care of it, maybe in
MVPP2_SKB_SHINFO_SIZE since the actual value I see is 320, which is able
to be fit into type int easily.

Any comments would be appreciated, there does not appear to be a
dedicated maintainer of this driver according to get_maintainer.pl.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417004120.GA18080%40ubuntu-s3-xlarge-x86.
