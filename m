Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMUO23YAKGQEASFJ56Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 289CE133C5F
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 08:39:32 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 4sf1242701otd.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jan 2020 23:39:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578469171; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5yS64KpvdsjtDCGWwel4+r4Pgjxb+ASMnTHZoMho6cuwqcVlBMcMioP/SGzM8UKQ+
         S++DsQae3xII+u08xymSvOth3jB/zcDYCw6/SaMQ2n/UlILaoM1ichisS8GW4iiPeo5D
         VBstdL6o0KKJe61m+HJw8UtDYTWfsHaBq90mOcPvPRk5wlBa1JWH6KTDpKctNerTxoVN
         GdaGzq5i4JbOcG9T0Zn+MFAB3hr6Zy9MBPubsG+IJTEBZIq4UxWdbhU4UstZgHnvgRz6
         ssVCf3sw9b9AlwYb6gn0JzC5dSSeYnJI5H4S1QhRjciaRVGNzg0PEtrPRHEHEtEW7NsP
         oiww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=dEgundi1JYT4o1ZeRHhw3KjiiawFOFE2Rrkgj8RZCKE=;
        b=c5MsX1YDgWCA6278MU3nR6X9BjvPCOjrjYh9hlnIsdEZwZJQ7OW/VccF/ZUykrxY9A
         WMz23ukFsV+8mHd0OOLTIczymg/5eJh5bKjc60yW32A05k04ttnCGNR5vbK2W0GSOQmX
         xLW5tajTH1oqbYCpjlI7FzATSXlzvfWYYNrP3JupBSaq5UBXVxemWMSUI+6b9hy70pxo
         fAFFzUgD+2DRyOdNNCa07seaqTd9nv02qofLQNsD8WV444kcjuStXzMAp0lIGOSiMTCN
         uugu/Lxgc9RpXsgk42T8jVdwSn+xLspFEUtFbkioWXgdHyWwEUf8fl1ufUlSUqk5QsmI
         26yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGMvEQFy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dEgundi1JYT4o1ZeRHhw3KjiiawFOFE2Rrkgj8RZCKE=;
        b=Hg5c9q2JEQOCzROSmk9/JvowDIZ30RFyJoNi6O7Upc1cc6hjC0CM/dzmgrHSXsahri
         G+bgHzh2uQ3qr4HYLx2UpMvBXevl2dSY1BB8+p3lcMLVBY9owYbdzB3xgCq0wmi5Tlyu
         Kn7VTYxLrp1BYkG7T0rQkSwwD2cqiJJiDAnZhNYC0/kVeBWvi617BwFveZasI/8rmKhP
         I/WPXnbhuGr1z5AA31yxhsJZp0n+lbSdeHTOExFGHOcPcklexTWP+hKnJUkhH2m7/KJI
         2ctz1GW59g97Ptk/K66T6sJdZLPeYA3jqoYYFLK6dcfvopkzqTikee09SbOUsUNKluGP
         nriQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEgundi1JYT4o1ZeRHhw3KjiiawFOFE2Rrkgj8RZCKE=;
        b=EggOxO2vZbRc63OzDLJkGA77ekZGjYhm0e/cOIOpifaGdIbiMHvnSwiaAlQY7vpdqa
         oZ6WTjAUBYyYlDH+tfFEOujX580kutUI9uncwPNSMv7os+KyPDHSYihNHoOPcyAxvoV0
         NJkMO4O9t1UUya77QBvHxqMtBn/rvBCfkVD05LZ42JCSWg8zOPtOOFHu8I7zOmKRiLdj
         9z14V7fvcQyxE+2NLOZFNWg5fujTMMn5MKLT/TyHd4+lcaVKp7+fnrIT1R9dl4DZd/oM
         HsMJndKqyfvGDlzuAn68QPB4ja74Si8A8C339tdB6smVmE8P2tYiFA//nTz9zxJ+cvSV
         JU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEgundi1JYT4o1ZeRHhw3KjiiawFOFE2Rrkgj8RZCKE=;
        b=db8OxsDsfU1JlJjdnRNbCMOwhCeQEe47ztFsKO4mgMB7ZD12mzlwry7VeOV8o42FpZ
         UeDt91T2pje6zUnJrZjTa2THK4xSiZbIqnFYCVi9Jx9IVnX8/OtrkGsaEAVGpLjyXj/V
         eDisTdbonGHYncHaGwBwSxY3Nr4p7yUsTwromRlVU8RoS5ZIFfcLQdRlCCRU4+MgHovw
         dm68UsKHCg7qY9BySPlPuidEZt6es9KYEKz6tm8r52FsKBFkL0/I5eqMPLEwex+IM+iR
         +71x0ZSsy9d9UILEmKjiqQBbRWRAjDo76EhlT90XWmdRaMfIg1yMq+8mbibqhcocbN26
         reNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWapQmhcqLrtMvr/44KTKfSQbfEw47bYsCMzY0zLuW/2x74NRHY
	CLjrMXZLE4ZwbQS94L3zZkY=
X-Google-Smtp-Source: APXvYqwWFz42y8X/XfVlbfoh2wq+vCAv7Lkg/ac2Xe8kTUE5VlluTsfpchah6Keuv7lEAkyqT/v4sw==
X-Received: by 2002:a9d:6c55:: with SMTP id g21mr3266979otq.312.1578469171050;
        Tue, 07 Jan 2020 23:39:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a87:: with SMTP id w7ls466575oth.1.gmail; Tue, 07 Jan
 2020 23:39:30 -0800 (PST)
X-Received: by 2002:a9d:65da:: with SMTP id z26mr3167596oth.197.1578469170792;
        Tue, 07 Jan 2020 23:39:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578469170; cv=none;
        d=google.com; s=arc-20160816;
        b=DC6XkwaJ+VOIm8s2yKAalWg5fhxl6Bc5G+5984ItZStkbW8HCm1EgV/FFfN0fzUI/k
         73ziD5x4Vw/geTj2mNB81GGdgq8Cuw4IAIeqX696iorifKMWvCFb3pTRgG0fJPU2nfqx
         e6FC5cSy0wm0Vqt5Pvdf9IOqItKj9FUJzHIL7alhZnX8U/e8Wwtq/pBQ1O88otjtyh1z
         NOSFEdRPnIktKa+oC1eO8q1sR6iA+vZbJdZYbXvCgpbZz7wke/E9CHtMwSc3ZmlvtqmM
         JN25FOcWcMi6ECzjkTzf7RJdHZcSBz+Y8CBGU0ABK0/aIPdAjlsL4XMDnP/7Nxs+hCvP
         C6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=y7+RFWMMBD+Q+bi1F1RgKfGt1weg8Ac65PIhljioCYo=;
        b=MAgBJcOAY4Y8zW2VBJ2NSAMK5zd+oqI5DM69xgSXQGM/A8oijNlhp+wUuBPQ0H4Ndu
         uN78LlAayF6ksCOV6voBxaGcIYcUn45v3tzrhjj4Wi+I8hvIUYGH2LZ9OetW8gjufkYi
         tYj6Ay+SG099BcvEh+M6zGeKROiX3O1K2dfWnZVksKAhz65CrlNg1wM74MbztFoQ7rVj
         V0mUOsYjTWmwtBzyFAUhmZJxXM2kfJpI9i2ktSQ4JaRJUTDs02AkKMG6ygbXHDtmpOHo
         9yX/8x7BaLYBd4cb5JG9073bGILXbq8aefK6dc6IcDoDwIvc7VjDFxu1m7klxNXhub9v
         rwRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGMvEQFy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w63si113531oif.2.2020.01.07.23.39.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2020 23:39:30 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 59so2640803otp.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jan 2020 23:39:30 -0800 (PST)
X-Received: by 2002:a05:6830:1d91:: with SMTP id y17mr3117979oti.276.1578469170330;
        Tue, 07 Jan 2020 23:39:30 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l82sm858302oib.41.2020.01.07.23.39.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 07 Jan 2020 23:39:29 -0800 (PST)
Date: Wed, 8 Jan 2020 00:39:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Subject: Current status of building certain defconfig kernels with popular
 distributions
Message-ID: <20200108073928.GA51655@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UGMvEQFy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hey all,

I decided to test building 5.5-rc5 with the version of clang that ships
with various distributions, such as Debian, Ubuntu, and Fedora. I think
that getting the work we are doing into the hands of actual users for
them to hack on is important and I thought it would be interesting to
see where we are at.

I have published the results in this gist:
https://gist.github.com/nathanchance/7127341d89914d335951af20b8bda67a

I will eventually run these on the 5.4 branch since that is what most
normal users would run if they are using an upstream kernel.

If anyone has any comments or questions, let me know!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200108073928.GA51655%40ubuntu-m2-xlarge-x86.
