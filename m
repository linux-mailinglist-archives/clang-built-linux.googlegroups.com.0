Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW5S7OCAMGQET6SJKMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4A3381179
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:11:09 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id 76-20020a62164f0000b029027f27f50e56sf391274pfw.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:11:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621023068; cv=pass;
        d=google.com; s=arc-20160816;
        b=zybldLzZaNex/+srAIpFaz+iJbixvdP4ZOSZ61tiffkK4Jw/tXVJ1GtFR5F1oogGfQ
         fCAW61culh6MeGst0j8y1KUxn872uP374ejnHP4SRbaXQAXoYfsY3pOXOOFpbTpubqcO
         P25pj+DfLJno8EqRX4eCzT2zLiQXt1IV79ZsZT523p2wZEg2pYbZFyZGvm2attY6M8Qk
         6slDUxoSRBlIXIs9atnHRFNqmWZFkngaK8r/1t2JNafiqnQ+hD8zTJpMEt8aR7LhPH7f
         azpfMkeIzVQ2EnO/SoaqlgxbxaRzeM7Xw8I2cx1sPdjzh2rA+uBNhIUsNien84zTblHf
         X8Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ZeCoICPyImw0bLTXBBZshGP9FStdKY+eEFSDO9ZR/Ic=;
        b=Kcuy4KvG90SWhvxuNJdqdfImho6MAK+Y06JTWpw9nasPc+P3aPWYSMiYd25u+KPpdG
         2WXFVeZzwDGx+rV48h0TkJIlbpuMalCY/8ukvEo2Zye2UEykvkEsT6XCaNaRSmRpJrfi
         ILzAIXwnlimhAxSUMjFR2rJ/i+ybJmOtbj8qK335qun/J6qN/EijHdH3/SCfSnNuitLB
         wX0plT7Dm8+FAyHmZo2xHWhHAm3NfhXKUh+BNdOyFDbzkSfP+KrrPYeaSG/i/M16U8oe
         yp09/YWgJ8bGYcwD6AKkwsddxcDqIBJxvIaGuHIdjmPIVBkJSeeixqNqUdD2JVqWthzA
         IWQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CE+KCPG3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZeCoICPyImw0bLTXBBZshGP9FStdKY+eEFSDO9ZR/Ic=;
        b=GLB6PAPvPqsU131Mdpc6nvUG/5mz9+/TBxL4Atxcmgs1VZKqzRzJ0aeuqdHsjT//6T
         sgzFaiBaRt0wNqR5AJCb+ONVgX1WhswDkLn0f6dxpcUkR+TIeGrShvK7Ag1J5jkOKLHo
         agQdt1M+V131rzUKB34BTANepD7s1MtXiztgYRuzDzaqYbAgZ5hCFPdTOv6RZ1cbBfYw
         e3dTFhNYQ4J9/qOzwx/mBGfAlgv37p3SoxWs+5BEx0db1ECome3+GBo1y3qnAQggh2Wg
         BqcBcU6yJRedRW2k54quOi98DkmwWtl8CcmaaqIT0aT0Xnk9yXBCn0jZz6xcLLPkZA5N
         GNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZeCoICPyImw0bLTXBBZshGP9FStdKY+eEFSDO9ZR/Ic=;
        b=FNV5J6cec70TT9tqPyP05ccZdVT0RlSpt9yyfG9tBV5q/rZ2fjRQd6thh0RSZOvWPs
         ogLeAm01wAOHXtbLTMK5apKXT17/ZG5O8V6PwjZWG9CR7csiJKYOWuzMf3irK5k+UTv/
         sARu3qCBO1JjU5dHGkE61gsNAglrLbSbMzc1rI1/lgBlw2mEIuY/WUatVwzImBmaTyDg
         uheHSqu7jOAss6pTRLAC2n6DYtAvJ/pl0l1Vsykmk6d7VaTckDDG3bLp0UPzgWHMJRcQ
         X7FsdqPeTjJlnCj+m+65jJFGzD8KDtKxz5+nkZZsPf7xGuoL650OzeWc0pfi0+n3lQGD
         HAdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yGe5qpdOD7/5DLNfJorizEea+b4Dc6RzgNqhLZ+TK16dbfvO4
	uDD2QuRW5mhCCfqtGbu5GJA=
X-Google-Smtp-Source: ABdhPJybgo1OB9ztb9gSGxeNRZZmdv5JuPchKsOif/GFneVkZsIFiTlw+6m27bDAuvjfCDNvHCODNQ==
X-Received: by 2002:a17:90a:db02:: with SMTP id g2mr7657161pjv.2.1621023068292;
        Fri, 14 May 2021 13:11:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d48:: with SMTP id 8ls478588pju.1.experimental-gmail;
 Fri, 14 May 2021 13:11:07 -0700 (PDT)
X-Received: by 2002:a17:90b:1486:: with SMTP id js6mr54148731pjb.210.1621023067319;
        Fri, 14 May 2021 13:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621023067; cv=none;
        d=google.com; s=arc-20160816;
        b=vnrg1TTgjvcOf3Tnop82gdfzjWygz0UDTJK4dskCQDCTh192/XAAGnkpj7roHbZtRb
         4x3Q5twyrgttMijFo1TWaNaVveyphcNQA3Ng8R9xdLLazK/TMVpyQzp98BxAt0inY2gz
         xs/1DpgJ6Bva8XOkLgCVul0WmS3vDaQeV7EDNlTAvxbXWkQaGbUQ/mUom1Oayqbxuw1P
         j4Q/MfiX/w4c3KWcy2DjMFIDy8Z+twAyRMHQSOPI1Nf9ykbQhYp6cDWiC6/zyH9tfd72
         OeswnDMEVALI5EuA7uw88j1Qqy7CvdqPFAaSHmfM6+b1MMnHTkMYMZjmC+8hY60Qh79o
         VqJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=InUJSC3uUs6UlgrpIzr6BCEqZZ5gt6IQ/2V4QtFRIUk=;
        b=vnGihXysT1hRPTr+p3U3fHGIHGPLKOEooFCv7UhgO4puk0Khib9i5TJfOSnvtg82Wv
         on4fUHQ5kFjPUOQMsGD1lJCMqTiMuiBmSc+GW4ucxPbEE4x41z3cvYLoq4BnY1NZ8m0e
         FDa795NYNbem+fqrq0TfIFThHnAY3Q72zgX49IF/rfwFgIKn0xMeUFnX1UYzZUIwLx2f
         3rrQsJyBywSaFvyw5zMZ0bt/Aezqi+7VJiIAi+vc988fZRnaZTmDSjMXjr+oSYKo/35K
         eO7E/BgTohtqymc4UnGbOEq2U9YVmZwgIBBwzSeyPDNMOyFwJxYEqCWua3eQXywdCf2c
         8kiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CE+KCPG3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si47625pfv.6.2021.05.14.13.11.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 13:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 78928613BB;
	Fri, 14 May 2021 20:11:06 +0000 (UTC)
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: paulmck@kernel.org
Cc: Arnd Bergmann <arnd@kernel.org>, Marco Elver <elver@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dmitry Vyukov <dvyukov@google.com>,
 kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
Date: Fri, 14 May 2021 13:11:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CE+KCPG3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Paul,

On 5/14/2021 12:36 PM, Paul E. McKenney wrote:
> On Fri, May 14, 2021 at 11:29:18AM -0700, Nathan Chancellor wrote:
>> On 5/14/2021 7:00 AM, Arnd Bergmann wrote:
>>> From: Arnd Bergmann <arnd@arndb.de>
>>>
>>> clang points out that an initcall funciton should return an 'int':
>>>
>>> kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
>>> late_initcall(kcsan_debugfs_init);
>>> ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>>> include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
>>>    #define late_initcall(fn)               __define_initcall(fn, 7)
>>>
>>> Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
>>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>>
>> For the record, this requires CONFIG_LTO_CLANG to be visible.
>>
>> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> 
> Queued with the three Reviewed-by tags, thank you all!
> 
> Nathan, I lost the thread on exactly what it is that requires that
> CONFIG_LTO_CLANG be visible.  A naive reader might conclude that the
> compiler diagnostic does not appear unless CONFIG_LTO_CLANG=y, but
> that would be surprising (and yes, I have been surprised many times).
> If you are suggesting that the commit log be upgraded, could you please
> supply suggested wording?

You can see my response to Marco here:

https://lore.kernel.org/r/ad7fa126-f371-5a24-1d80-27fe8f655b05@kernel.org/

Maybe some improved wording might look like

clang with CONFIG_LTO_CLANG points out that an initcall function should 
return an 'int' due to the changes made to the initcall macros in commit 
3578ad11f3fb ("init: lto: fix PREL32 relocations"):

...

Arnd, do you have any objections?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/534d9b03-6fb2-627a-399d-36e7127e19ff%40kernel.org.
