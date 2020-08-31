Return-Path: <clang-built-linux+bncBC27X66SWQMBB5P6WT5AKGQENFMMHTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E702580D8
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 20:20:38 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id b10sf1915989oia.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 11:20:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598898037; cv=pass;
        d=google.com; s=arc-20160816;
        b=euZ6bkaodS+a873HaAmgC7pz6ghXcs5VaKBge2+X8+0jAgzaNiGqOo88PF3gTqFYX+
         R3pM0kuA6MUzAsX0pcbM6vVjDy+/P6ultJEJOPgGxvsTUcHTscdTRiEd1VaqNViD/c4Z
         ZzclXVFZ8bFTnjdvOVnOYU3ftihH4A168XPcRIOYHmlcd+skS/RYiSj3BlIIhb9jj96J
         I4vIfOzkhjv8EG5g8+kX3FzllOof1BHaLW3QiubVvpW0SDZ1/bNmss8+QPktyK1pnQ/2
         bsej50ROQZB1aktjCPd5/kNjjn+Ji0SPptI8tyWpuQJGTcIyUGrDmYXGaZDCLch5FaZI
         MUYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=uQSJs0b0chBmulmjKsyuEV1p7O0fpeCeeuA4aoEfKmE=;
        b=Yv11bhy5ci8Vn7+glkVyxMvgHabaHdSH1MRPy2qGQ48CpCAv7sXZ0nQaF57XpGqnrX
         Qi1CxPrli3fIqmOFydQ1cUzyWYga+HVBmfWtlWQkpRWvI2b35CxiIdCJh2gKx9decncz
         eULZkHtjFQYOhREFyDH8mGip1WidjcLhLTtEf87mBnp8ITbbcHgP7UOFAFb6WMjRSnv+
         eCWX8tTGqnhn/5dKdlsFkIi1w3pxgbyfDYBxNa9GPj4OtA3zWWyfNx3AusNTZqBG//MF
         Yw17IROmQ1onDAfLpRrkkcb2qd/6CetN/Q6xvS1WkRBGIrmUCoh/62X1KNjOybjv8b0j
         X+yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NIDbh+HL;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uQSJs0b0chBmulmjKsyuEV1p7O0fpeCeeuA4aoEfKmE=;
        b=kJlpkhi5SMWO/uB7ungLr+tKu37ckumGlHFNQk3rmsj5YS5EOg8nPQlNMGMRMdehUu
         whbxc6UPcftpD/Iz/C+1lWYGpum+J7W1DACx62NTZyNrIuzVZLEBZ1vbT6tLxMOKq20c
         xe0/k7Cs3+KlCn0E2NzuXASnENppbZajVtFK4GPmjeUkkqBU/jp5uHME0+Ju535PQH4B
         wiJ/pDmy/nrtL2ZH/4DPyxiG57CIz6tGu4xAtxeUsThOwTjI7yoxwq+gpR7ZMOZiN7Vb
         A76V5GcI1UaRyKabli5ItCSHtFyOr+m8g7MI9b+vPQXfl9WPrVH1iCAj+GYR3ILKYyEn
         17BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uQSJs0b0chBmulmjKsyuEV1p7O0fpeCeeuA4aoEfKmE=;
        b=RGi5aN37sTm7TmOLzNeb/xA56ssaD5TNnso6MbYrsBL3catkbwE0irOO8Uc8WJsI6P
         GGbtLxFfawC39sWNLLsUgnmP1e8pLv2URk8O0m+pCLsWlQk/AWoKc6/v1hTAwTW5wyNT
         RJpuPiIeeiyLRohMu1UIAef4Zj9VxZanRpd0lBoylr2EzoBbPy4WbJ9aB0kKnIRp6ynO
         BKJE5B+vRQfyz56Il7JFqZL8vCOPLOJTl8vpOIEeuvikWZGXUog/x+PJAWs4SHu2OM2C
         2GqU8SfzL2zyOPGkBxQBBoLjWS6AjlAYi/PxwgcnEQhrFl3nsSQOg3Zz/Y0O9BA9EoV9
         VOPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tV2K7XdHAoo6eZMPpLG9iHUoF0xPn3pRGjX1ZdJn5+aNWOtwH
	aLz9obeJticFUT13zVRFPf0=
X-Google-Smtp-Source: ABdhPJwnAWmukmph94b+t2olQiA7mBSWpBBoASu90FmBC8lIeSDI9s26JAVx05PWM7uMpyjKd/EsFw==
X-Received: by 2002:a9d:2f64:: with SMTP id h91mr1822678otb.0.1598898037471;
        Mon, 31 Aug 2020 11:20:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d9d4:: with SMTP id q203ls466500oig.4.gmail; Mon, 31 Aug
 2020 11:20:37 -0700 (PDT)
X-Received: by 2002:aca:1209:: with SMTP id 9mr399573ois.136.1598898037062;
        Mon, 31 Aug 2020 11:20:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598898037; cv=none;
        d=google.com; s=arc-20160816;
        b=W0jwtugsomA5WrQuNCFlGHlMfsh7L41Zrg8UTsm9xZ507y+drdP3+vQaN2Cz5dVqI9
         /WKvnM/rjofUiXto3a9KhR+nDihg1il/eFXqutNzyzdtyta6KZNXtdOXY9yNYcKGXalQ
         zk0YtoUZCAvta5C0VXZ8czCQSDKb7gRKCoL+9+NZbD1TJSgozcZWiiRquTwWSQcJgD8W
         7FZ9Smfs9HKA+pnXNLT1AgxfngkPI33fm0iSCvJ3jJLqh59+fTuUe4HlEnMvoCj5voS0
         5QahYSVdfil1a5F9/VnZ5eMY+sMCz0B1+HZogdZRSdwFfNl/FLZYvsJeZd3ZsjcTUKZb
         YM7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=vTgWVCfmD2ZFmUsGbcmjOpx9gO63OLfuS/6GjWgQa9A=;
        b=1CrlzrbrUpGyLrZVG+3EQphACSxEUVVIc5pbZXz6n6gcyPcf9yOBxA4Ftz+e4IrWcK
         zpweKiu26ajz2gqRtX4vnOqWhhyYqwhfeGRUiqeNesRf+SVzR+pnfqcGZeFg5+AqhYDh
         e9jyOJhKCoGABC4kD6DVe5W47fvfukjiSRkkH6lGsQw99C/Nm5oLQwI5zPeEfCVE8ozd
         qgKCSKKSN/kZbWF++LWt4HXYDAJfnj4dSMD4oTmkUuybRkPkr2W/tSRIfsyhPqCFF+t3
         5In+O/+7ANmlkQc85q1RlUKfey4uDiIPPP7+xC8KJhMnhHsTpFflfUETzGlUXlgXojKi
         UlQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NIDbh+HL;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id j139si555419oib.1.2020.08.31.11.20.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 11:20:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-blrOoaSfN3Kd2MFNsNlHRg-1; Mon, 31 Aug 2020 14:20:34 -0400
X-MC-Unique: blrOoaSfN3Kd2MFNsNlHRg-1
Received: by mail-il1-f200.google.com with SMTP id m1so5756240iln.19
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 11:20:34 -0700 (PDT)
X-Received: by 2002:a5e:c305:: with SMTP id a5mr2368704iok.142.1598898034117;
        Mon, 31 Aug 2020 11:20:34 -0700 (PDT)
X-Received: by 2002:a5e:c305:: with SMTP id a5mr2368679iok.142.1598898033818;
        Mon, 31 Aug 2020 11:20:33 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id i14sm4939106ilb.28.2020.08.31.11.20.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 11:20:33 -0700 (PDT)
Subject: Re: [PATCH] soundwire: fix error handling
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, yung-chuan.liao@linux.intel.com,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Sanyog Kale <sanyog.r.kale@intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, shreyas.nc@intel.com,
 alsa-devel@alsa-project.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200829153515.3840-1-trix@redhat.com>
 <CAKwvOd=+X2AakX3kTYCvyug-MK_Y+atDbkDSRxA0pUfOatQ3mA@mail.gmail.com>
 <CAKwvOdnn6eMqJsL=aJ8n5dWWoHjXUL0LBSyVwZPGCKpkBSLHXA@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <5f9c8819-cd0f-6fb9-1b0f-b34f390ae65e@redhat.com>
Date: Mon, 31 Aug 2020 11:20:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnn6eMqJsL=aJ8n5dWWoHjXUL0LBSyVwZPGCKpkBSLHXA@mail.gmail.com>
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NIDbh+HL;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 8/31/20 10:48 AM, Nick Desaulniers wrote:
> On Mon, Aug 31, 2020 at 10:47 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>> On Sat, Aug 29, 2020 at 8:35 AM <trix@redhat.com> wrote:
>>> From: Tom Rix <trix@redhat.com>
>>>
>>> clang static analysis flags this problem
> Also, Tom, please use ./scripts/get_maintainer.pl on your patches to
> CC our mailing list; clang-built-linux@googlegroups.com.

gcc is still doing the building, so it this appropriate ?

Asking because i have been sed-ing clang-build-linux out.

Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5f9c8819-cd0f-6fb9-1b0f-b34f390ae65e%40redhat.com.
