Return-Path: <clang-built-linux+bncBDSNHV7J5QDRBTG3XPUQKGQERJBINTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6EB6B972
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 11:43:41 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id f19sf9134083oib.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 02:43:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563356620; cv=pass;
        d=google.com; s=arc-20160816;
        b=uvW3DMlKvhmPIlazRZ2pAe0NBwNBulL+w61WlQ9gnMlE0R/5qgyPSqC+0NIXUDUwrB
         NspUkY1QG8Wg1sirM5nZsIc65nNupc9cJWqBbEDMmoBgix1Cb+gBpaS0jrGTZf2CDR2q
         UhH3HUUS3F+9yRp4emkJspRucnjsHYCh6FeJ/sxh3WQi5T1zdjXPGfROsjG1hxHtFnmQ
         fo10EZE7at3iDwaj3rjs5x3+49K2cbOghnjgrOc7waJSjWcXviQZ9I8xC5SGfFi3FJVb
         1EbdAd5V4hx+XkD6S7ruNfhGiPwVmm5BXzRVSQYtMDUkyio7/XBwFTr7GlHZ5MiFHOHI
         frVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=R4wXcKVr7AUha9M/1EdXq1xF52s3I7m3L63vYyO7lHc=;
        b=QODVG3p80eekd/ZOT54YCGXWgSIDiqRoKnjodjdPV+qFs5HyKLKcWP7RRBC0EYIdny
         l1FtlOXbVRLnjsqeVLfbY/zRSFrR8C66R9SlufSziUB8fVL81k/msaEHwgdieD1sFrAL
         QtsdW6qiJmS/LOIRMmTa5PArKhBJGzD+VjVLw4zqYYkvKoVFzpbMFyXbSCbZRNMesD4C
         e/uKm4vI5sLuQoyOg1Lt9MxTkq4Z9qxOvT2Wu+69kssVqYCNnrmrg45t9eHYwXU+IeY6
         sqPMHckn0DcdntjWsLr4QRkmgg5hKJ1GfwpoTpWNAwBz2h+VmZNRHK5kOm5xz0j5re2M
         KUrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jbenc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R4wXcKVr7AUha9M/1EdXq1xF52s3I7m3L63vYyO7lHc=;
        b=FUM/puBu19Wo6c3D3dSfIdALyY9Ol+MFHZjY/hPqVfGie4h5u2NY7fVIsJS7vr8MfS
         /Nkb1xgtpz7Rc49ug5EelWsiEAMglupy5GAnsTaYOAMBH5Ye9c7zug7xl9PAVyyvxwpb
         loSzwX9Gq75UjAvJTlGD1xNY/rRv06FTAM4Q5IteR5syO1pe/yZn3uto16S1PLiBY7GT
         11rCUWAra1+cme4iWkfL7Tfx+Ush4k0EwVc4LYJSqFHuyIE8Fq/iZu/uWL9VZB5BxGXO
         /xhz01xWxbzw2WfAfEvnjjQ44uMsVANJax4Sf8Y2MoD+ZrbA5fgNP79NgZ9mY/ZER+ie
         o+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R4wXcKVr7AUha9M/1EdXq1xF52s3I7m3L63vYyO7lHc=;
        b=LMm0AbR3ZpvQbUiKIhEQytvyIOzMyN+caKupkTgtL35wNQfae5KjtwFLs/XKtDm8ZY
         Pt8VM56Kj6vXtnhx4eZ97F5HKet8jxgNmzVt2uZBQd/pLH/e4MyCrvQzpbvfinbux2Zx
         iN1XkQNtQjZuqaO6soOqyBI6WKR/muvNuGd8cnZC9sB5XRiuple26g+2ApyUamr33jwu
         iwIyBMTRz0U2f6uJ7GDFvcaPOAlZCvmgBZSMAKsOCTJSaBMnm4DHcZmdF1cxt0yPWJFZ
         AoLf+wCp6iRJjMhWy9cOtAyowQru0/cS9wSLynIizRpLL6xaDoN2uX4z5mUpLr3YZt5r
         8f/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwb2Hw9Rnn01Z47HroD/gLcuokbi2Zrj9Qr5YI706ngo5pgndC
	NVWQKZvG/6oVy2zJPiSH7ws=
X-Google-Smtp-Source: APXvYqzflpER6YpWlvwyf9JN2mMJlxYsb1SZYNshezGHk6b976y8SYL2GzeCcB2zHGiDl14Iic96aw==
X-Received: by 2002:a05:6830:1291:: with SMTP id z17mr29318130otp.194.1563356620576;
        Wed, 17 Jul 2019 02:43:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d7:: with SMTP id b23ls4463766otk.14.gmail; Wed, 17
 Jul 2019 02:43:40 -0700 (PDT)
X-Received: by 2002:a9d:76da:: with SMTP id p26mr29500361otl.311.1563356620323;
        Wed, 17 Jul 2019 02:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563356620; cv=none;
        d=google.com; s=arc-20160816;
        b=cXWd+Z0lmBBy37UiLp2Q1ZnDoXjHX6LFqssd7mtr6PfVQSGtUz2onb+r0yiuCMDVTT
         euuAZbWtzXY7/ljgre0LIYASHNPrNYOH/KGSV54ztH3KvFOXLoG1chw3gjmYGKmEdx/9
         kAYG+W6lAb3NxmaUQaDhijn2jA/vib59+FdkKfHSoWVvLIPAM9zGuB9Mw+2IIZ9TrzCw
         wnOwxexKyLf3QR8DRbsnimfYbYUtcgN9iAcf1JI3gY345kX/FsREu6+1L59+hUo46Fps
         gCrQykAyYZX/CXPPii0iMdd4iN+6Pz9hTFonyEAizQAuQfcSCeNohJddD/y9vyD0nx8X
         nnjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=9A2Kk6+d5t0fbk0wI1GQegWpYGFIL3bbzPoH8dYe1ME=;
        b=0zKnNkAL8KFaHqqB0gN2b0qPCf1J+WLbzrMpkz4z8iFrkb6JqLQFXr4QaaIQEvou6D
         B3LIu5y0j20UgZXNheI1XiKLwTbX3agvAECSKG5pxdMoeMjkEVzRS7U5rCPM6LUxo/RF
         ZlaQODGSxZmlWpjxusvMBRs7YZtYvuvtjBSsX8YpAU0NZOeXI/v4l/UrSxNX2XjE+IuG
         WBvn8NBW8g1KiT8Yz7XOGoT8wqt8nEt16Smikkl5rcs8IaZQMUzE9429zCy7CVkIHlYd
         Ul0aUNoQvKg5W/vGCnViOUzZSxNCM2hPuttDg+ZCG6xmJA42odovbTvVKzeCZ+3GpzTA
         GPhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jbenc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id i20si1275063otf.0.2019.07.17.02.43.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 02:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DDAAD8666A;
	Wed, 17 Jul 2019 09:43:38 +0000 (UTC)
Received: from localhost (unknown [10.40.205.143])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABBDC60BE2;
	Wed, 17 Jul 2019 09:43:36 +0000 (UTC)
Date: Wed, 17 Jul 2019 11:43:34 +0200
From: Jiri Benc <jbenc@redhat.com>
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, Yonghong Song
 <yhs@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in
 test_lwt_seg6local
Message-ID: <20190717114334.5556a14e@redhat.com>
In-Reply-To: <20190715134655.4076-226-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
	<20190715134655.4076-226-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 17 Jul 2019 09:43:39 +0000 (UTC)
X-Original-Sender: jbenc@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jbenc@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, 15 Jul 2019 09:46:31 -0400, Sasha Levin wrote:
> From: Jiri Benc <jbenc@redhat.com>
> 
> [ Upstream commit 11aca65ec4db09527d3e9b6b41a0615b7da4386b ]
> 
> Selftests are reporting this failure in test_lwt_seg6local.sh:

I don't think this is critical in any way and I don't think this is a
stable material. How was this selected?

 Jiri

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190717114334.5556a14e%40redhat.com.
