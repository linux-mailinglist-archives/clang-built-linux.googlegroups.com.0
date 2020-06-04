Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBJPT4D3AKGQE6ZFGTPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AB41ED9B8
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 02:00:38 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id t24sf3415348qtj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 17:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591228837; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAboB4qwieZMjK9HuvO0seRQrVLON0USDiDf3UACqXoezKMAiv/N4W6/ulBFdtDtDw
         0pLIn6OwoX1QyVTlkBJpOfthCwDpwchg7jdkjrwsLoajwUaXL23u87Tmx9FCBJdfizr/
         hlNMA6JUPtgQCkzrmhO+K0VYb9AllfmMj0Nbk7QjsBfu/hGsMQgqcU9WjArsuYFsRvO/
         gVuSp0Q2HjeNNGpL14vU/QrSBmHoUtStmJALYW/PqVavbXPJS5bFJPNNBqcvjORRS8YJ
         tLRc3xUIT+ciBx6QVnIfDV3xcT9EnNi7sV2KQDO4AD5AvBtY2Q8JS2QXyWBHjYjy30EM
         b6Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=tWLPOSc1dInX8qiSap0EMdh31EMznVlCxBD2UxmzD00=;
        b=U/Xqyq5M8BnCQ2ZCHkMo48yKF+c0hzOzkjbUSaPIHVg+x74Cy1qCt5jAp1i/yYAksP
         urMwRlNkk32MbGlGRAhWOAzUirq8J7tWCt3HsVzAgeZcPPKMjrL9O2Z59DZk/GCxcBrg
         ivHpMSW8UO1gDbIc/cyr+7Vzwg+3SeyyiHHtfnqP7h655kL8yiRdnY5EpI7nH2ab7w41
         bE16Cb6f1LzbTSYCJRNQRygBEEDClLsiQrw39znGRTUuwniXKbaoZ2ql7w2k4io/Ee8D
         HQyWyzbdh8dKJgK7IwI6K7294UmB9OTs4jJo89UNX3Q00hAaWr50kIEWl/MVXxuqnCxk
         eBJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWLPOSc1dInX8qiSap0EMdh31EMznVlCxBD2UxmzD00=;
        b=cXB+nZObN+9y9ht09Nqu3/2dJKwvwrl4+u+OqGoBnbJ9o/7jKMa1PVut5FLtk9H015
         c3W3sku4bLV9I/pwkcorqPij7oWYJuJNn9Aa/2Y6U7sHKHUcUuNfj7Zos7YLItCaXdr/
         PU2ZGxYPZw4LWl6YQ6n1RpWlJmikFq4gpHAItBPG+6eMk7WX2PbFliuVBaVJiOscXB9Y
         C0M64uVIuLwd4fd3rn4GXsRkQe5anMcotPxKFmayzIbILiKWzO0x4Dc43CjovXpPrDlY
         RYlN7AX8VC6jFkr1hI4Gfdtj1u2ZLgmZwgqZuukUNsdcmtMAEWzrge86Eq6FWR+Vuuck
         JEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWLPOSc1dInX8qiSap0EMdh31EMznVlCxBD2UxmzD00=;
        b=p0mvdGQkx+2fq9ZMM2DF6voWqvHSC+jLDByuseKxoVQPtApm1ljdMyEwHxlYoVtCxZ
         GbHRKal6ocKZZCAkwnb7lAO22SIUPqhJp68oOG49FyCa8ep6GllvmEPKnJZ8XhG9U4UL
         QPSmDUnaRRYfM1E20Crw8FAxDpA2rUI8dWoYJwY8JC96fO/HYOMIoLJLd42LhFw7c0MY
         aV9c9QxG/XlOsJGqDllmDqON9jtc25MfkYo0AhuLSypD8lvyikbjHoTR2Bi3U3DjpaD6
         aiitYOr0aNnrVxH1NQUSqRj1fRE9/M9eBWLw9l7yKJSPa028sjb+7fTijjgouqdD8rL0
         hf6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532b2IOrS2fL3p+jG/HfwdlrwTMfoUAryxBq/vr3lam75eovKwPZ
	NkdtXKwpQAIhBjrDFJkQpFI=
X-Google-Smtp-Source: ABdhPJxkAljIuAT0/67pB/Mdh4mD0DxF7HZrg9vyGzx6ctGYH1wOS41EJfjiy5kzUVXEWDsxtwUQgA==
X-Received: by 2002:ac8:1b99:: with SMTP id z25mr1916111qtj.209.1591228837344;
        Wed, 03 Jun 2020 17:00:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2978:: with SMTP id z53ls1168077qtz.1.gmail; Wed, 03 Jun
 2020 17:00:37 -0700 (PDT)
X-Received: by 2002:ac8:4c8d:: with SMTP id j13mr2049816qtv.38.1591228836941;
        Wed, 03 Jun 2020 17:00:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591228836; cv=none;
        d=google.com; s=arc-20160816;
        b=MptuRl9pOHWCihOpe0pEZTXNZ6aDh3KcfGg3LuN+dfqXB1xIqywY8loR31MIIH9zWv
         KdYP9QdXKLyKOGOMP89+apu8of78PIVK23AJsnpPgW48FqM1PbC68sclFldk7xy5WoAj
         FixOhuKyiEbPqcQMoHLJVndsr8ZI77m1pZGjcZs96M6gTsv0RNjGSFuUj7FlfjKS8f9c
         f0mhK3iciSBi7ow2Xodb8t2yuYujG5WqHP8VwIFd3jiY1u4HL6xZ6RslO36btN5OwaHh
         G1ZfaKybB9LRz0D6r/W4u8nJIxNg/wG6I28qYxtrXWVY2jUKeC6TA10MtjGgcYDpBq5L
         j1qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=hqnXIJZaSToxwE4bsbIxKQdnZSaxn/cLMp66RTiJkEo=;
        b=BMlS7KKBkROvTZ+R+cEmlWp6Yk3EoYmZO9hG+lBDNqwI32Kwp/BLU0V0usUUfu/hK9
         cCjMEiStCRLOrkPCOKusXatIeqA471ODHzT9H5e/zqinc7rM+i0CfIQzZQiRsMenHsjZ
         wUxEST1H/82qn7Dx5fJjjfnicRZTJySi+WqG8Fgs/CgDQQrI7NIbLPNxYBwWh0OHKbql
         Z3HMRUqOsCEM6NqqYo8faEIJJ7xH5Zw8aTpLelbnJcTWxN1peI6pmE2PAXzjw3eXu0pA
         asXxnYqzJta/+eKx3GHS2Q8jHDprvLeNkxNqyUlhJDuw+Tkg9hgmgwxWMaOzgYUX64i1
         F2Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com. [209.85.214.196])
        by gmr-mx.google.com with ESMTPS id a78si243319qkb.1.2020.06.03.17.00.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 17:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) client-ip=209.85.214.196;
Received: by mail-pl1-f196.google.com with SMTP id t16so1394984plo.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 17:00:36 -0700 (PDT)
X-Received: by 2002:a17:90b:605:: with SMTP id gb5mr2422811pjb.167.1591228835561;
        Wed, 03 Jun 2020 17:00:35 -0700 (PDT)
Received: from [192.168.50.147] (c-73-241-217-19.hsd1.ca.comcast.net. [73.241.217.19])
        by smtp.gmail.com with ESMTPSA id 98sm3970139pjo.12.2020.06.03.17.00.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 17:00:34 -0700 (PDT)
Subject: Re: [PATCH 10/10] compiler: Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>,
 Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org,
 clang-built-linux@googlegroups.com
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-11-keescook@chromium.org>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <8882ca16-5192-a519-d5a8-02371fbb28cb@acm.org>
Date: Wed, 3 Jun 2020 17:00:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200603233203.1695403-11-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2020-06-03 16:32, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.

Thank you for having done this work!

Reviewed-by: Bart van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8882ca16-5192-a519-d5a8-02371fbb28cb%40acm.org.
