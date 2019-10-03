Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBOMY2XWAKGQEQEWGGNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2132BC9615
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 03:17:47 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id r67sf516723oif.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 18:17:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570065465; cv=pass;
        d=google.com; s=arc-20160816;
        b=jRJpD10qzh9tB5sF2KTQLnmT1Klr8CzsbZVEULX5XVuhrL4Yi5ZtgF/6SOJCoPgtFw
         A2gZae8jBINTFYX43GbcHjYxuxMElPoy7/ZvtIUei4X8pSN6r7oq4SZoYQlVaKAZ+1Wl
         8UFUaBrB2UkFznmVUasxrPjxxE+zeu1QSeJBvFbT7i4Ef02gYQ7R2KGcSMTdLE0lMOgY
         AnV4NaU38Ood9Glm3aefn7b78IS8g3v62GeDffcehubxbx+jke0Va5Y63y9hMPlxgkj3
         CFFS/OmvA+rXXgpp56KTCAcQo9H4s37Z/FKhtqKVrz2bXUFk32J6cYjN3vNLGU5BX554
         ptUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EicmgC5VOUL9hBLCsKegIhXqVobwQUac5YYBahPfb9o=;
        b=kHcywkxTjNWaTAgd3AFpC4px1IZmlYicvkxfhobgmIp+g0v78LzeKQxpNpxmBcuYUs
         rdIc41eOKNOyUqxDEeBN4WXU31e4wLwuGLZqH9bcyt2By/Sr3OIOjqt/jfrVoKUAV1rE
         sfdtW/hqLQ/5E7DR3jrrqR6NnczQ7sCXeF0VT/GcRvjOHY9RR4fXhcoP3EskMYXINhL5
         AA2xDha0LuJzY2xJAjuavISZkActES6iW5Vao4S2zwyuVHwGWDR2FILFUJrHh4bKW+VH
         sXew4/8x95FONOB8ARx7zwVAOzHAEfhkpKFiXTZACvMKYRCmtesTUgJEGrvG+bWDFbil
         38qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IVAGDgYf;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EicmgC5VOUL9hBLCsKegIhXqVobwQUac5YYBahPfb9o=;
        b=ga4K9OboCGTgqozTf2xYHPFziyE7bN2B06fCsL2+OLIVHYFgY54loa7aELuhfQT0AI
         Tvd1acKz2Bu/ls4edC1qdEjnOZsK3T98HkMQlfmpWCQzivGEHTBacM+jEQZW8vu6VRdD
         ZFKV+HgX2CGH6rap5e6iWZ2AXq675bIMg3glKZjuEMYKpWWJD09OtU0jONOydjIsbauO
         qKCdY6TxBAYpBsS6rS1+lqX2Wx9nrPRoaAWY2qY+/2wOkrzycc6Ytu5aUeBhll/io/e/
         38UgztVSFgxu+1QmccznyFth5wQucx4kYbvFhbELOtmkamiGHN5Jm9gB7/0jPuwxw9lc
         ApQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EicmgC5VOUL9hBLCsKegIhXqVobwQUac5YYBahPfb9o=;
        b=KN8QulPrnA432DHbTNV33rqakQSne8rxDilCb6WQLIS0kTvJq9kUoaiNyMBg1JRSGN
         CVPd34rfTi5QIVNDaSdjXo7kvnwPbJW1ctoQJOplFPVCHCHQgsmkr8zWemyH059XGM59
         UMWt05VbhWvOKjYgKr1HwqXP3o7OY3sU4IjWCokhDTdrDjdmIY06zARoAeE15WzQxE29
         ENhg5DTJMhOk95kAz+UpZfbsJnUOvAnXubxKpGuiPIvpZmz7xn2Whs+IWLMpYauw33yC
         3kvHXuVDw3Xuv+NAsXkQmTwNAVwGENURCkA7pThh/AGV43TcqJrHcoImLW1R/T3ZXICk
         PN+w==
X-Gm-Message-State: APjAAAXYnrcmZ04B7oHZrFEbD4+ko9oQhn19XmpjLGCgw3f9WLLPn58F
	04gsiFxpoIuQ8SK/5eIw/MA=
X-Google-Smtp-Source: APXvYqxZPWaOLHXizhTKvYaU4RrGzP1svKQZ2xN6eg0byMdMWgWZo8fWVGd6CJh7W3mTYbY7rz41zg==
X-Received: by 2002:aca:75cd:: with SMTP id q196mr800425oic.88.1570065465767;
        Wed, 02 Oct 2019 18:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fcd:: with SMTP id d196ls876658oib.16.gmail; Wed, 02
 Oct 2019 18:17:45 -0700 (PDT)
X-Received: by 2002:aca:b48a:: with SMTP id d132mr795550oif.98.1570065465391;
        Wed, 02 Oct 2019 18:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570065465; cv=none;
        d=google.com; s=arc-20160816;
        b=jpOp0wzM/EGFh2MwAVsWzpiL7ELfPDUuyKpa6ZF1K1jswIdTRkARdTY7zqh6zqxrl9
         ssFkGQ+CFIaMfqCz3hLc85DqSuS7M8ycp+04ZxYI9cs4detuvj2xNxiRWR0T5+QEkid8
         L9c+ocYi7rrpPtUKd5FvVMnh6Xv6lbPa83HzT/lDlok3O9pOSQNMONY8SkLqlwQll7ue
         YLvvvYERMvBoqfC+qQeuY2CZ0+3ofGO2GHG/Cs3+sRWdexWvnlGoGKsYhMHHEEroQVCs
         NKha/WjdYy8TBDp8U6v26gkJZtuLryWcaY3ZL5vHr/pgAwkihhs6H6t5yHgAtlQHbZjI
         dIYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=tSZmlKH2BrNCoI7JYxGwdsP9mWHj0/GO7SJu9GifiBw=;
        b=iHI2oF5mLKfBTIcca3dI66sX0DG0AhEx2k6zxKmOAAAovxcxa9Fd5UkwH10YF2009r
         eO7trbxoyau3sErXhlLBhA+JgPWnM9UTEjwgldq6IvbJ9u6TMkyW4SA77pwHo5VwPJO7
         AJyforZ3L4zxR1AWAYTJZuCGASYwKouSgEuLyqi8XPkeLtvK1ipRclgdFYamKVCeKLxi
         CbGkGeQSxcEfWx2jTbx0OxzLRI2d1f7GPNRGwH+M8FQjhlEeeNsdNnE7n6Dwd+85tvFW
         xKbRtDKNoutI0QEW4f1/bA/VdTTPrvPeLWCtjIoaFKmyEmESufIZxYZJwRUbWO4x4E8L
         eGUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IVAGDgYf;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k198si55579oib.4.2019.10.02.18.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 18:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id y35so710894pgl.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 18:17:45 -0700 (PDT)
X-Received: by 2002:a17:90a:1502:: with SMTP id l2mr7565357pja.140.1570065464619;
        Wed, 02 Oct 2019 18:17:44 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d20sm709584pfq.88.2019.10.02.18.17.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 18:17:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 jdelvare@suse.com, =?UTF-8?Q?Tomasz_Pawe=c5=82_Gajc?= <tpgxyz@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Henrik Rydberg <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com>
 <a2e08779-e0ba-2711-9e0d-444d812c0182@roeck-us.net>
 <CAKwvOdnG6tTHHx5aL8oA3ta_mW24aZ37JX+=HQ9YphearL4DOg@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <bde955d5-bfd4-3e0c-ac45-b999ad1cc96b@roeck-us.net>
Date: Wed, 2 Oct 2019 18:17:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnG6tTHHx5aL8oA3ta_mW24aZ37JX+=HQ9YphearL4DOg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IVAGDgYf;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::543 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 10/2/19 2:43 PM, Nick Desaulniers wrote:
> On Mon, Sep 30, 2019 at 5:01 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> Again, I fail to understand why waiting for a multiple of 20 seconds
>> under any circumstances would make any sense. Maybe the idea was
>> to divide us by 1000 before entering the second loop ?
> 
> Yes, that's very clearly a mistake of mine.
> 
>>
>> Looking into the code, there is no need to use udelay() in the first
>> place. It should be possible to replace the longer waits with
>> usleep_range(). Something like
>>
>>                  if (us < some_low_value)        // eg. 0x80
>>                          delay(us)
> 
> Did you mean udelay here?
> 
Yes

>>                  else
>>                          usleep_range(us, us * 2);
>>
>> should do, and at the same time prevent the system from turning
>> into a space heater.
> 
> The issue would persist with the above if udelay remains in a loop
> that gets fully unrolled.  That's while I "peel" the loop into two
> loops over different ranges with different bodies.
> 

Sorry, you lost me. If calls to udelay() with even small delay
parameters for some compiler-related reason no longer work, trying
to fix the problem with some odd driver code is most definitely not
a real solution.

> I think I should iterate in the first loop until the number of `us` is
> greater than 1000 (us per ms)(which is less of a magical constant and
> doesn't expose internal implementation details of udelay), then start
> the second loop (dividing us by 1000).  What do you think, Guenter?
> 

We should have no second loop, period.

Again, a hot delay loop of 128 ms (actually, more like 245 ms,
adding all delays together) is clearly wrong. Those udelay() calls
in the driver should really be replaced with usleep_range().

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bde955d5-bfd4-3e0c-ac45-b999ad1cc96b%40roeck-us.net.
