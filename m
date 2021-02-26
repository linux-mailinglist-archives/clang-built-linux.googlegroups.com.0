Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBOUC4SAQMGQEHKHDTIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C433263CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 15:10:03 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id o65sf2258280pfb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 06:10:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614348602; cv=pass;
        d=google.com; s=arc-20160816;
        b=ehZa6iGDZVsSyZwNgGDBIpIgQtBp9wU/S5MFSGOAa648LXOcQOk03QoLWsN8MYYsBC
         ldA5kqoLWpjx00Sy0Pud41bBRyJ2ifvZS+hHIWjbGKSxx9bIL/qlVHVSjtNUjKq+Ojta
         IOpv4Ke6X8BI5S34sLSv+ZhROqvCEkKgdtldbLkHvhH6Ix7ta5vGpMWNoQi8OIwmIs5u
         mhfvbILkWROQ3VTilpw9au6AKEtb3NtXxyVWoD/RHecaRC3Jamt+QFAdjPxBnuwhCQCg
         GaoJ1X33qdR/OIlrjOxPjgiGTkAl8oPJdVuajjJglq5J9gDdOILOQGcsKL1iXjQz9a33
         lxZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=BzF1Gst5ldcbHx+FfZWdCxgCxWkehPGOxiNXrMpIteg=;
        b=gD+0JrPccaIAfVG67sCcnRJ6LnpYoGQX2gJHtJ2tiWKL0clJi3NqyPK8ukxsvG9liW
         tI3ieAPcDfN9DproNzID+0frfYhw8DlwLy4osw0KKkLtaTBdI7CQWb4qWH8rNVGvKKZH
         ODAxo/iGnDvv+zOcKp3jQVtuv9f02FahOjlbKY/3j+paabGW+6X/Hj8JXWgmEA06P6f+
         s9x3karyLpECQlArTqFL1JbCn++HwKu4tCAiIgND4foxumDuTczKj/0fD8iUGF7zI6UE
         No4pMOtfh2b2AWU9v7jy17aMH94qJEVuZeAdQNLpa6G9pJPvGCSC5jGbPBS9iUU18E5b
         Yn7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XqMcdEoT;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BzF1Gst5ldcbHx+FfZWdCxgCxWkehPGOxiNXrMpIteg=;
        b=okLpjaz/ZqZ4qSyZ7QqDn+uw8wp+3cuFE12yWskElMNX3Eut+TQDXD1dekyPJDZbPH
         YgOjQtEs4+hoPrFLY6sDlFYc0u1BRgxyFubLXUp1vN26HE0zQIuXsG/ZJMYOBhK0CkeW
         eensRXbF0W86YXks807Ivlb6/E8slQ/UMgjZrIiHqYRugVzFNn/rSfn6vOmfSls2BGWz
         oQd01ShBAWUcx91TjWwm4nyiiNcExyuVhJnZDrhdV/+ROvY2hhH0asM6MsQhZqwhDX0m
         8t2sbDy8+TyEMuhthTeiWmsqSq8PYCWbfpcNgyqaac3655aYUYBe31cObMb/1a9V8eFG
         Iz5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzF1Gst5ldcbHx+FfZWdCxgCxWkehPGOxiNXrMpIteg=;
        b=Vnuq0s7QoyaMm9q4ZxziIuf1fBE9vGwC0gZzHT0fCl/PTaXGB/ExARjk3fmsW99emE
         V/HHE+X2RKKmCMC3rK/F0mUa+fsKIz1nO37NhGlDxcz8dk/Dt4CbZY2YoTDflpWfyJoB
         8GrAlNG+5aaHcaKah8P6kPMvrKOG/yCMXk7hMp5p2cIasxZtMUSWRFTE6f+BTeizLrGz
         QR4L0xZcm3IEbNLFU3CcLjWNg5km9Wh+91aRZ8ZtOlusNEw2i1YCYBTtUDnJCvniScaM
         HT8HW5KKdBy3LRBUkLpua5D1BHiTun3JZJKl0Re+XpVnm3Jcx3CxXYiQoc33xgefCuTD
         F0fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzF1Gst5ldcbHx+FfZWdCxgCxWkehPGOxiNXrMpIteg=;
        b=G+J35hd9hP71347lO9KNNEJNzV+91+n/f5TvzkhRWrXVVQrQLqWEonlFb5kpVyx54C
         FHYPaENqVeOtbX7Mqb3I1jNw18Vt5oDRTd94mz32pNuhh0y2ICpaV1UqWNyLjUlIMmaU
         1cmQA5bJalLK70eVcwqKHaUasE5h1Tq33m7RBkmDQ6zlF1qZgY29ZmtBMaLEst4oCfJi
         s6KxDazHGj5o9TApODU8uST9Wq7I0pxXtq8jebNVwmeCuZ4xa4YuVNUZhF2tMBWz3Z6D
         kSeWtOsF874JN7WLzJEJYk7CAJ9cLtn3gZk25g1dPoB0lkpH7rhmgK9VBTcRixQQNGCc
         jA2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o0uftWlrobsGZ3RY0RfirWP5LFkZreRDA+hnLmHi7CAgcspQQ
	xWzU+mTDcrsTG7/sxuZZHQM=
X-Google-Smtp-Source: ABdhPJzoZ/pcdeOjyAvMdJRnjFSyBEaZllxw0MtEShfGahixbqK8mx38TvcfrzZ9ZZCw79f+yE2uVg==
X-Received: by 2002:a05:6a00:1392:b029:1ed:fbd0:c700 with SMTP id t18-20020a056a001392b02901edfbd0c700mr3414487pfg.4.1614348602191;
        Fri, 26 Feb 2021 06:10:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e281:: with SMTP id d1ls5580550pjz.0.gmail; Fri, 26
 Feb 2021 06:09:57 -0800 (PST)
X-Received: by 2002:a17:902:6bca:b029:e2:c5d6:973e with SMTP id m10-20020a1709026bcab02900e2c5d6973emr3460047plt.40.1614348597059;
        Fri, 26 Feb 2021 06:09:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614348597; cv=none;
        d=google.com; s=arc-20160816;
        b=V+vS2ndb63y+jfe8a3p4KA6B/n88ytlk/w6a0mSZZ3E/gJvQErTmxlFSRFsWl/S4ip
         Xb1l5lWnIfcK5BF+NHTMVYfjC1RrbtNy1wI8/ZTLN94UBJH1wfJ0pKWz8nYJQ7XMpB4D
         37uXj4wvLrqMYcewVadnGkZdltuVlwXU9iopW5ltJjUAQHg8ZuvNZepJasoXphEaU4NQ
         SKw6jVJf9Mb7/EI0feKuaUMSnUW03U4thVccv537bg3bi6gFYztcp/3zgGUXIZZBkXrO
         3CMqmBKSlYMwI/adRZ3TrDIJJj+5ChECGuAWF5z2AbLr6bxD6SqMSiMnVPYZ5tbzAWrH
         bisw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=QA/d0cFunzbxzCuiklavIRwd25SEC2LCzhPw4fegxCo=;
        b=qLnTtE9fKlDRmvH116MJOKJmYAYXRXbgnv0a6IY5k/v4CBize8LSoHpk6fGg2m96Gp
         bgPJJG+H3a0z47FTxDe6pOr+naqi84tmfAhP0NEOmey+1lvqYi3UhBZGzZ7etgcpJMc2
         /DetjCTmzCH1y5iQET1THTeCr08aP5CSrzHhEoSdpjVz4H0jcpDjWBSgf7wOpA/tbKWM
         hERvOi6YSeCzsQ7cWYDtAw4OqT/HQRieriplyNCeIyPRjk6wmTyQg8P8QTE2LU/AoKs4
         n60ERjO3ftpHVkvTfwQYb+UZy1ru+6UaFIhFoERSR5l+TYRENOjLMKGZxeDqFo8GQe19
         oX0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XqMcdEoT;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id p2si394046pjf.0.2021.02.26.06.09.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 06:09:57 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id k2so4278581ioh.5
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 06:09:57 -0800 (PST)
X-Received: by 2002:a5d:8b8b:: with SMTP id p11mr2915771iol.45.1614348596698;
        Fri, 26 Feb 2021 06:09:56 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (191.6.226.35.bc.googleusercontent.com. [35.226.6.191])
        by smtp.gmail.com with ESMTPSA id r12sm4657881ile.59.2021.02.26.06.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 06:09:56 -0800 (PST)
Date: Fri, 26 Feb 2021 14:09:54 +0000
From: Vinicius Tinti <viniciustinti@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	David Ahern <dsa@cumulusnetworks.com>,
	Taehee Yoo <ap420073@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Vinicius Tinti <viniciustinti@gmail.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Similar functions in net/core/dev.c
Message-ID: <20210226140954.GA752212@llvm-development.us-central1-a.c.llvm-285123.internal>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XqMcdEoT;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d33
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi,

All these functions in net/core/dev.c are very similar.

__netdev_walk_all_upper_dev
netdev_walk_all_upper_dev_rcu
netdev_walk_all_lower_dev
__netdev_walk_all_lower_dev
netdev_walk_all_lower_dev_rcu

Can they be merged in one function? Are they a hot path?

Regards,
Vinicius

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226140954.GA752212%40llvm-development.us-central1-a.c.llvm-285123.internal.
