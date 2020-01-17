Return-Path: <clang-built-linux+bncBCW73DN2RYFBB66CQXYQKGQEQVNTRVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AB4140473
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 08:25:48 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id a19sf5928935ljp.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:25:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579245947; cv=pass;
        d=google.com; s=arc-20160816;
        b=BXtFi9XCjtYEsHyp13ni06GI8I8hUeo8ZaSXXQOmzNSN514WNZVczFKjIKBDaCIdPB
         +ZZ07NuBGt42g2tyudOJHQpcYHWQm8P4QW/LI1hbwGgqyBjK8+EEZEpEXYs5Oii6PVg2
         gZ1sofcUOc2vynOLtLtJc0SkMYw0gAsRG0b4vVNa7MRHSRRHpFKHFb9jDkLX1+Ko8GG9
         GlzkC49UQ4yPCmsD5xChvgOt3yZLYryaCWG46qKcNE/7GLgTXExNsYNL7lf7aUq+k6tx
         Rvc+9m5TkxdeDfj6bK4FfiTPh/1z3GhALVCdnt0JYAYtv6z9hmzgSbz6y2V0+6vNL5tz
         FAuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=oWfTMTJyjoBe0BjckQBA+PYX41/bmdRYC294Tc3lKow=;
        b=POZrAh660dR2mJg8Sg/wAeo80uUyzhnfkvEajCJmmwHJw9d3OnzVn8o6vDcJE0jj6+
         1mCEJqbZhCE2XnCuIA10gUfCFi3W4M5s1rJkyOUILBzjfBZsatyIryFbkRgfrn8T84vY
         sbmwgJLxuhPW1Q2bXNgWdOgEfZUFQxMWz3p2ahp55XblYNsw36sFb9LkmjIuzPRncVPj
         Bi1PYSi1PaE6uU1TVtUk6ABiteb+miDIryyZy48Sm961FU4HOWMRdKMC95ClVVhZoedT
         EBjvUWD1XAX1kfGym+IHN7YKg33RB5LYF6xrc0GS0snyBm7w7S8hXnOFWx5lO1GJpT8h
         HJhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=NV9b5sVh;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oWfTMTJyjoBe0BjckQBA+PYX41/bmdRYC294Tc3lKow=;
        b=hDjkoAArzwjq48ztNZDFB78PB5wZuPebwBUjIjtbF9+kaq3RgjoiLIo1/0Iv84mu1h
         nYyaCG5snofMpWKzD4yutqovuIay9H5igbE2Hiq/7i+Thqc12nZkLuhzU2WC7wLHQfV/
         X+F9XziRVL2LIFcvXwOLicnZkrItENnFzrDWOF6BRdzIilwYg/W+ltl+rNpG3olBlyks
         soOHruv3TXJaV3lGrqfuY+g9ujy77j3rvt/v5gL4girDeWrj2BqCdMiTv5Kwd/qiYE1z
         ZvJVwqZHU3f7IcghIjryH6P+RMXXzOM2XN7QuZFSK1g3Yr+XenIURRSk/iRjaypzNSYP
         mlbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oWfTMTJyjoBe0BjckQBA+PYX41/bmdRYC294Tc3lKow=;
        b=KNIgLsUCr5b9uhBAk3ZBofHJdMEELrXO/xUYpGH7f2VQEa30pPiGGuLZWcO7Dxi+l7
         Ja6HYhPpPPbd9fo0Wd5FYtWTQpW+HuM5+PkUf4SYgS3YNbFUCMZrZORMSmJRpCYhzlzR
         CQz8C82dVwirOIEH/Dp+Tc5KgeJh3C3ABbvBGoBSxE65zAryRRYScMN1+PC5W16KMxx0
         2klzzMy3FfiMsPAjOtKZHfzt3NF8ZcHmJ7AQPjLuhcQ4z9Mtfg7gXYt1zBRHrmrSTXI/
         oILuAywzkY55iZ6UuR0gOQkWlyFQyrPxZ9a9nkXRtuP3BbqrBvBSjrIdF/Nu/2n7vT8T
         9Ccw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdNPWgf+TotG6WBE5gRQ6vInDA+nlxFO2ol0Yu000hYErkp/Vo
	YK5PdxHM5Pp/zpm/bC1x9vI=
X-Google-Smtp-Source: APXvYqzA2uf7XNUdq9sjMCmCONVI4XeSEf4F7fhioKtgOQPIVu8V+leoghE+6dnEyjYQ6X0Hs4Zptw==
X-Received: by 2002:a2e:95c4:: with SMTP id y4mr4809650ljh.38.1579245947469;
        Thu, 16 Jan 2020 23:25:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:730c:: with SMTP id o12ls3399382ljc.12.gmail; Thu, 16
 Jan 2020 23:25:46 -0800 (PST)
X-Received: by 2002:a2e:580c:: with SMTP id m12mr4936675ljb.150.1579245946832;
        Thu, 16 Jan 2020 23:25:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579245946; cv=none;
        d=google.com; s=arc-20160816;
        b=RxZLU/BSZhKt8tSrxVuaj6Sn6xTwKUYhY+iFxuR5rnMcfWb7iNW/mAL7ZzwZA3HWbR
         ouC3hZc5xGe9GW4ieH1DPan9w84RTjURkX5XK6p5M9BrpnZxAq23m26KYYMc3q1CxTTG
         eiuyZqyIDQSJetKuzqCCh4qH816O86xdBLCVlieZGVpSaeqj2NhD8eT01OY9hDtmoe3f
         T5h7YC/5C/zWCgqbB4TMGAKTWk6JDkRkotoTp3E5SbDtNuOKh8peHdqxJiUenz6PQBHf
         GD7jbF2uJfdPmIOP/IQAr+KqVE2Sg9Yp4wLzNRdWnQjhEHJoKuyK41483pVbI+xMWTdN
         /KLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UeKBLZ/CdLAZrnCykhZrVadqCwYfx67m4+oSWoKkHOs=;
        b=raOlZtcB0fokx3pFWiwlJgi2CPiqmmsBNSl+LLr6TzqoH6mxpOI+dpMRUIRDc8rcaW
         0OaPiQMFz9MH/MLWpV7NtLwijc+8uIb4wSDvCJTohUrWgOF/yMtPKf0cXeef/F3/hhHH
         /m04dAtiFbYj9gNFy5vuZyjWFVlfu0TM4atlg+HmTkzRu6+pIEnJGLIL4PQDNOJJXYjL
         cZbdLz0RT9ceDcK85mX2nNEx4AK8cQkcFbO15KbSve9lDxk1+JG0c5vjogBeKcayPQUR
         9lUImXU/q+dRO5pQKZQmGQHAoRLiBPavLemGy/sjk0cnIm8BgCbZgegfCYACbpn0ipEf
         7JwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=NV9b5sVh;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id v16si1295950lfd.2.2020.01.16.23.25.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 23:25:46 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Received: from [192.168.2.10] ([62.249.185.68])
	by smtp-cloud8.xs4all.net with ESMTPA
	id sM0jicDxnpLtbsM0nithAZ; Fri, 17 Jan 2020 08:25:46 +0100
Subject: Re: [PATCH] media: i2c: adv748x: Fix unsafe macros
To: Nathan Chancellor <natechancellor@gmail.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Dmitry Vyukov <dvyukov@google.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20191022132522.GA12072@embeddedor>
 <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a729415d-1304-9722-2433-129bd2255188@xs4all.nl>
Date: Fri, 17 Jan 2020 08:25:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-CMAE-Envelope: MS4wfKyK/rzVjxnvkwsMf1qYMwClCWjHZYQSwtv4fCa+bjIiWSl35QLfhQTLEONgzTrvuzo0nGXVqfWPv/Y6XZ995571exmOIxPjek+cZCzNbC28LzOJfMqM
 0nSdK8oWqIs1T5UXeaBBYdAEUH1uhV7hhY4xZn9Y0TjDuPEdBRAB0YMZdVVTou6DkAFZEZnj9wNdod9kVwWSyLOL9BfFnMXG91wu+AtPMa0LYcKjd00tJOEp
 XQ038SezE5EVrQL0W1/dVPM7cq16wOPgK8zqlWyOdEqpDD9PsHJuhzDFsBtJ7pDThdN+9qL+LNIwESEMBvkIUNQ+emUJ7j/BNJzrbfBElA8sQ3nHQSPNXvP3
 5H6qWMqBPvU9R/QBy+bdtfjHanwosQvKO12HvC1gSuwJ+9wvZBjfdDW+ZFaxuKCEw8dHP+3sIqolOg16zwYU1epGkTO/HdJ71zYqEHmT+qWrm+LoiXcC/4xc
 QwWJEaKCXCDb7o61ShAHaNzfmIxbuqogodSs3g==
X-Original-Sender: hverkuil@xs4all.nl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@xs4all.nl header.s=s1 header.b=NV9b5sVh;       spf=pass
 (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as
 permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
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

On 1/14/20 12:14 AM, Nathan Chancellor wrote:
> On Tue, Oct 22, 2019 at 08:25:22AM -0500, Gustavo A. R. Silva wrote:
>> Enclose multiple macro parameters in parentheses in order to
>> make such macros safer and fix the Clang warning below:
>>
>> drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
>> has lower precedence than '|'; '|' will be evaluated first
>> [-Wbitwise-conditional-parentheses]
>>
>> ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
>> ? ctrl->val - 1 : 0);
>>
>> Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
>> Reported-by: Dmitry Vyukov <dvyukov@google.com>
>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com
> 
> It doesn't look like this was picked up? I still see this warning on
> 5.5-rc6 and next-20200113.

It's been picked up some time ago and will appear in 5.6.

Regards,

	Hans

> 
> If it helps:
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
>> ---
>>  drivers/media/i2c/adv748x/adv748x.h | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
>> index 5042f9e94aee..fccb388ce179 100644
>> --- a/drivers/media/i2c/adv748x/adv748x.h
>> +++ b/drivers/media/i2c/adv748x/adv748x.h
>> @@ -394,10 +394,10 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
>>  
>>  #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
>>  #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
>> -#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
>> +#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
>>  
>>  #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
>> -#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, r+1)) & m)
>> +#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
>>  #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
>>  
>>  #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
>> @@ -405,11 +405,11 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
>>  
>>  #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
>>  #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
>> -#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
>> +#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
>>  
>>  #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
>>  #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
>> -#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
>> +#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
>>  
>>  #define tx_read(t, r) adv748x_read(t->state, t->page, r)
>>  #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)
>> -- 
>> 2.23.0
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a729415d-1304-9722-2433-129bd2255188%40xs4all.nl.
