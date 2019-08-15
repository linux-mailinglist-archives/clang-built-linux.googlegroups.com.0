Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYWH27VAKGQETWW3MGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C798F754
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 00:59:47 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id n3sf413868lfe.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 15:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565909987; cv=pass;
        d=google.com; s=arc-20160816;
        b=hD/0YudzLGxLKSQyS+djqGO7aAqei03SuNkeVjalsCW4EjLBmPYL2Z7xIaRkf/exsa
         ifhi16KLkazIsyyJY7Y0ZE+0EKFEoP9op0W2rwg0SMddRXwzN1h4dSqburAXf34P/Kib
         87vcygslSoDuXRVSBild77K8u6YueXO4FDR0TQuQV9xV46HfGJSZUebOk5I+qqLY2QJb
         E+c5gaS+pDZ3ZVAF6haNEkrci/ACTt0uQt3ein8BwqI4zz5qFZC1Zk/kwWo16ev/rejJ
         a0+6yotB/GDTQr18DjA3+COkUJ+F5i55067GxHUiWi+ek3LR3PG/XMuVTieL9v3rujJH
         YBjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wXITF7JyFO0vJ0pT4sFKijMZSJ0zI6kaDvviClofZoc=;
        b=HWVFsD71I5c72YAmDKahctdtKwJI1Srlb3jWrTleutCIv0tgkNXmvew4Eh+cai6aGy
         qxtedSVn4lWl0ifrPLbulg5t7i4IrTWsBtfZfRhEVvciaGeI3aTO8JRVcLmYAdEVhow1
         5V+U+P1/oEC79D41qpu66N/3RCveeRvmEL7K2GppoqGBc3HM1LsKtPkz/Yoplkgbs23X
         cdWD1rVQDp99ivIyeisATwWA+sIcsyzPvGqCdPii6xN9PULK9qjqiEyo6Ev767R14jzT
         uwjeL/is0XR4VaS0BFJb1FLETy9QnKU6opo6BTRq3HDZF5gNwLoCuIDHIcpKPloBnkxC
         YN+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YinilCEz;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wXITF7JyFO0vJ0pT4sFKijMZSJ0zI6kaDvviClofZoc=;
        b=MDTjznDcKVwnpSqQqml6eLqDkdEaB7k6E26zhNIQY3wPL8DNtHeLiocIeheNNQLunM
         ggDWhLZvjajyUkMvxyaHM1UCV4m6jyVE3a4ugrCONwuRWHkdsKiM2bG7v0x9LAaQI82s
         TagRua6eYskcfPLpkaPFv5C8sF1El7kino3ZHqGqy5F60TZRK7r5XoA+wFfyH5nrKARB
         VNH4zqi3pKodrNP+nEdW84LEbIxXulbO4/qiOO4TixIjHuBWHzLZtPijNuJ4mpiC7nzG
         lUEdb1tc6rvU3PxwEPAHJP5st2lKzSq5qaBBY4nkZMZ99/HDvWxtsiVf6UrVo7q6wfS8
         K1XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wXITF7JyFO0vJ0pT4sFKijMZSJ0zI6kaDvviClofZoc=;
        b=eDVr91nYyHU+D8Rs1dDL3OEtTibIj2sOCjo8KGVC4sWUOgHaB2/maQVKMruKwq0ICG
         +ZGu2yuREIgO/cGfXi5s53vqXDwhve1jd5FwL/KL9bwCsM7aFgd8zy0/1uHklT7D7gr1
         dmKW0DdvA41Q7boi6aAokzXY1pcnbsDj3Z/4Hpddupa44GPICwh5O0izRkR2o+KIGVXF
         61VBdteF792rgsVyBu58zI97Qej2BxNYSI885g+MTQSryuSZnfStDfYTFOwL/2ZkTEIE
         a2W45w2c262HoeLaAMlmIz3ZI2tcpSuo6YQnMNFEn0AOqAUmPqtG1Huj1W4G0EZ1DfhV
         T9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wXITF7JyFO0vJ0pT4sFKijMZSJ0zI6kaDvviClofZoc=;
        b=jwQtss2ZZPt3oYB2Nhbzl92QJ6Vuulp/0ZtWzYTKfEsUwrVXJ4OvwGA6sbnJU6dvcu
         sOVEdjq+BlXYw2LKZXrAqt4PA8l8yTwyjkSL8qwr0l3DmKKNLLvsAVrvJTDm7I+ggi/v
         tW4jTP8rbkHRIe/hY7AqGV6jxnBn+5MjuJoT16vZJN2VSaENvr7/6RrjvAWlLKhI4X0c
         LJtEBr+i4VdWXMdg8YSEijG2/4ek1/CkdBiZsl9YSgvQ7dZVZqVSh2PE7+cfId2VdmCu
         AZgZraad+wwlbTeS4RItfv7WRZ327/HDGbQusnt8dKRKAEjMFYeL3BV3K0wDWdAJ8ju0
         bNlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPD4dt0+4oeWU9rH+xJB3B56BB9gWmzrji9NiV1mEYjFcOBATl
	6O+R67Cb8vD4XrqNVHwg3Fk=
X-Google-Smtp-Source: APXvYqzscApSykj3/4OK7tj577BEvRGfQWkcIoVFY8/nJXVjW3pXq0J0lYvJi+zz3D/60G9Yrz8jMw==
X-Received: by 2002:a2e:995a:: with SMTP id r26mr3874566ljj.107.1565909986889;
        Thu, 15 Aug 2019 15:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dc8:: with SMTP id x8ls787935ljj.2.gmail; Thu, 15 Aug
 2019 15:59:46 -0700 (PDT)
X-Received: by 2002:a2e:9b0c:: with SMTP id u12mr3873853lji.239.1565909986279;
        Thu, 15 Aug 2019 15:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565909986; cv=none;
        d=google.com; s=arc-20160816;
        b=v8HDR2YDM+zC+QadU6Poae6hrCszZ5prgPwLky8KX7lvEEUgxnV2mN+1f9u+aV4PMI
         NE+tq8xN9icmRcEqssFSEucyYgffrN5dYIpRNHc91Uc8svBJxerCNP3RzrMfCEYowbTq
         JuQu7FSM8kqChPjb1ZkeaLr6Zjwr3ITpw/BM7qhp3DPw5mcyy4/mB9+mp0v48X7Ab5cW
         mIPqSHKh86GeWtiRDDdYvh8OdnR1ImSkO4SqFDaJpHgRp4VXTKlNcE8rBvVFd1IqEDpD
         uw/g0ZTV462LoKRcuV7YAybRxayifhZ3/2oF7+m2DPMklvjhhXF0aKYZJuKGDhGuSQnV
         12JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/TruZIxtpLXDniXG8O8y0k/AZstmN0fZMWSKysTNg+I=;
        b=J8X8cK4w1N5zZjUCBVeI6rbISCwbhqUqkPt6TEvKW9+zR7mj8LMYKNFRrYzu82BYuo
         kuMH/yHwrBk8+4QItnpBgvZ+mnGm3u4mkpGwq9IuMbpze/iBj5RJXI3VpKo0aiFOU8yb
         Y4eHf1qII9qNo0tfU8J3KVp9ef7uuL9n5o4qhiWrXn1LRXyg9lWgdhWrFzzkPk3gN6WF
         w7qjgGaOdhR6EfNozzdyCzXEjHsFwUuYoKxH/RjCGB0wbU1xWIoCJVpbuBNQfoQSjx93
         nfY5Vp2w67JxTjtaO+9tKHx1JIM1/MfUx0L4khjN6RGJlpjBdPLeFuuds19NO/ribwzA
         1LAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YinilCEz;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id m20si125796lfh.1.2019.08.15.15.59.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 15:59:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id e24so3603454ljg.11
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 15:59:46 -0700 (PDT)
X-Received: by 2002:a2e:9252:: with SMTP id v18mr2746420ljg.93.1565909986126;
 Thu, 15 Aug 2019 15:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190815182029.197604-1-nhuck@google.com> <20190815204529.GA69414@archlinux-threadripper>
In-Reply-To: <20190815204529.GA69414@archlinux-threadripper>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 16 Aug 2019 00:59:34 +0200
Message-ID: <CANiq72nM4d-rc_qUMUEisXyEU9A0mbW=O_w5X0zoqWNPLacuNw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Michal Marek <michal.lkml@markovi.net>, Joe Perches <joe@perches.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YinilCEz;       spf=pass
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

On Thu, Aug 15, 2019 at 10:45 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> I am still not a huge fan of the CONFIG_CC_IS_CLANG ifdefs but I don't
> really see a much cleaner way to get around this. Some that come to
> mind:

Yeah...

> * Revert commit bfd77145f35c ("Makefile: Convert -Wimplicit-fallthrough=3
> to just -Wimplicit-fallthrough for clang") for the time being and just
> rely on adding -Wimplicit-fallthrough to KCFLAGS for testing.

I would avoid applying commits that will have to be reverted just for
Clang, particularly since it is not fully supported yet.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nM4d-rc_qUMUEisXyEU9A0mbW%3DO_w5X0zoqWNPLacuNw%40mail.gmail.com.
