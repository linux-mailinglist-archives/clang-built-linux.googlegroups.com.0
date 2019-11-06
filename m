Return-Path: <clang-built-linux+bncBDTKPJW47IKRBD7LRPXAKGQEDBKRNDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id EF30DF1B4F
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 17:32:16 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id v92sf26621321qtd.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 08:32:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573057936; cv=pass;
        d=google.com; s=arc-20160816;
        b=M4r6XW8mKhbBrlkEB73WrEAq1BiviEh7Qi4fzLdHZdZiIDo6w6BPCs3eCOxzhyEXa4
         Ajsu+UT5DSPKl+/rLc91D9LaJEfJqHGg5rIKsWjKMhfzfHOC++wfz7RIUQ/PPnCA4yvB
         H8rMa2fLEtJPoQUEQOEsHCcRrXtPRa/s3q5kmle/kapz2OQ3DHeiAAVPd5CNefEPSPb/
         MgmU0g89vY+lfYQd3i5nmg30yWtbY6QBGtewuwyQc4940IjJF6MR/D0nKURkBEjcwIGC
         WZhvq4I6baJ8jYl6HrENltotjtsMXXue0mEDpMXrNyJPIxnydFobyFzwLXzjJyxl2jL9
         dTog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=uVcyV/yAjDP3KSktesdcszOgl8QSL5f6mN4MUlrLkdo=;
        b=khzAleBcu1cx1bXwjSZOwKmxV08w4NVhWlSLnEqp5JA0cmVDlx18ivStbBphTDTz4B
         Y8oYHZnL+x2eLTjluj1Bzr43L7ARN3jRBOPBkzdzT2zciXMxD6ChjfaIgFQ8EVOfQs02
         YzALBpp/EnLZf/E1KU79BpimXIbXdckTkydeZymm3bzVXP5mIJEwS6nusEtKovoEYYL5
         IYL5zQCzZCHKq2QgxxMcAdX+oZflLUBiv2cbKlSfA0cnKik1bxkw+jA33Ud0yTLAIvTW
         AdkSCnCffIoUNzi0CsGhLrgBPNqwFuAnXYE9ABCWX6z062lqycX1AHmGPEi9tUZf9hHu
         cjhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=RDjOLla7;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uVcyV/yAjDP3KSktesdcszOgl8QSL5f6mN4MUlrLkdo=;
        b=Je3DXN0+9bE4F+R/800rY0KQ5ytcirE5A7fI5t1r2BiheQEiblmyph6F2wZnvkrHVl
         +LeCFacOjpZWwF8ryQ90MpzRgA4bUsmjWwYiHv9V6ZlTO5MyvJCtsVkfRPHCAKTLBFGC
         TVVp+HL7MU5dHLHpCpDbvWsVbY2RmaDb8RQZTjlslaiQ+SnlnrXlJcn4EX5OsfWNAg0V
         kVBm+gpEcPLZX0OjpJnjqPRW859fbrzhbLcJ4IVtmfEwc9N0MDSVu6Ti7EjWZAiOQEw1
         Tb3WSs2wC1oC6Z+4K88BmpdtcF8wVcV8/zj+xACJvUGMQeMTHUu9sQcQoFZKQQ2UKhc9
         JNxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uVcyV/yAjDP3KSktesdcszOgl8QSL5f6mN4MUlrLkdo=;
        b=FBFDe1gru/fUpmgzMNV+r+/2+dFHPqVUS4L2TkQRzZmR2msekOOwv/r/BntclL6MAd
         jGp0iNQc3Ib7+MU7rn7QIyASTkWmE+PlWVmEIKbPygRM5tfaKlDYp2QYkwnT+LvHMD/8
         4XIu8HrUdru1fFjvBpKvgcYV638mCIMqt4ZVEXYOqSVBisMYFaQjJ//YrqmVRjAATnRr
         t2ee4wkrvT2OLMF22JzsiPwZvuTkrcYiAWg0Nd4DcmcEVm0zTGZiBRX9PjkoRUx1knP6
         1MBEUh/SVZTfVxrHcEeBBg9KIC3+zsb8Ar3WzRGpf7REZXbjUzVsctGLs7v29ZBK0Aim
         2/Rw==
X-Gm-Message-State: APjAAAVULiwE2L3TAfmlpeScO00KqSpUF7lpH9u9lkSmmyX0ZUPPN4jI
	avFZ8OhAHgehpgJNJwYzcPo=
X-Google-Smtp-Source: APXvYqyl+YaNhINMGgvJdguIvsb91t6ijG/ejTvfqgChTZnk5j9gmPl3KwM0b3gMEzKuKuqZEAodrQ==
X-Received: by 2002:a05:620a:2057:: with SMTP id d23mr2779468qka.148.1573057935879;
        Wed, 06 Nov 2019 08:32:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4cf:: with SMTP id 15ls952584qks.10.gmail; Wed, 06
 Nov 2019 08:32:15 -0800 (PST)
X-Received: by 2002:a37:9a07:: with SMTP id c7mr2836367qke.176.1573057935529;
        Wed, 06 Nov 2019 08:32:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573057935; cv=none;
        d=google.com; s=arc-20160816;
        b=zqX+mSmyxvkWJDO8VC5H4TC3e0IKhShX2hND4PccWN/osSz97GJTjpQHl4rzCTNeJm
         KP2rsUb9hpPTXNacWRsWQyRjnCwAatlbJzE30ICuhFm5WTtEAEpLhA+Bch+agB+HyTaC
         Wq2y4FJJ93SVuWbzmaes6YWaHeAZfT3TDBEdm3rkUZUWczMi0QpkbVHPgXvgqCNn6GYw
         Uoe5VEmJ7bbn1bAecV/Ef/oPpRr6qomQOg84zf+sap4QPjATFu2KrBPcC5IWra49XE4M
         Btnri03JTLgc+lk3Ck6DmGZsZrJmh3Bst1qA+Z28A1DUYZwbW29SCcKP2ov0HQIdhH2L
         GXEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=YDXR99N/YzQ/pZqCEI29huJxwejGrYigJcQpVl3mLN0=;
        b=ZID0pRX/mEZIhJiZKMLu8qyQ0tjAeT+df7PO/fPfIaxoEhuExJEGBDn03zHJKNbajF
         pj9tKxr+TqCe4wKSekF4VRgvMVnPQXJ2UNTP3iUzr6OcPOf+o/QBSoF95YbkBcsbRoHF
         pyU9juVfnsDzww4QV3KMrgVYHHunz/3Rg5jCB4ikUqhaUL56shhljss4jVRLET2fKxj8
         4Dc2/v1eOXsUyEUwyzEDU7FiOX19zbOOEONL19jWAOLMYWNFgpY73/MiCW+mzW8tNz7z
         g082fNlnYjBei79lfi0jyNm0eD+CoP65nSzNuLbiu2JfrF777Sef00s3PbvAKbPh0K5t
         UEvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=RDjOLla7;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x6si636729qkl.7.2019.11.06.08.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 08:32:15 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id s10so837850plp.2
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 08:32:15 -0800 (PST)
X-Received: by 2002:a17:902:8486:: with SMTP id c6mr274839plo.137.1573057934474;
        Wed, 06 Nov 2019 08:32:14 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id m12sm2974603pjk.13.2019.11.06.08.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 08:32:13 -0800 (PST)
Subject: Re: [PATCH 05/50] arm: Add loglvl to unwind_backtrace()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-6-dima@arista.com>
 <20191106091258.GS25745@shell.armlinux.org.uk>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <cd6c5df5-effd-a1f9-8a25-9f5aac3a92f9@arista.com>
Date: Wed, 6 Nov 2019 16:32:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106091258.GS25745@shell.armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=RDjOLla7;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as
 permitted sender) smtp.mailfrom=dima@arista.com;       dmarc=pass
 (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
X-Original-From: Dmitry Safonov <dima@arista.com>
Reply-To: Dmitry Safonov <dima@arista.com>
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

On 11/6/19 9:12 AM, Russell King - ARM Linux admin wrote:
> On Wed, Nov 06, 2019 at 03:04:56AM +0000, Dmitry Safonov wrote:
>> diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
>> index 7c3f32b26585..69e35462c9e9 100644
>> --- a/arch/arm/kernel/traps.c
>> +++ b/arch/arm/kernel/traps.c
>> @@ -202,7 +202,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
>>  #ifdef CONFIG_ARM_UNWIND
>>  static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>>  {
>> -	unwind_backtrace(regs, tsk);
>> +	unwind_backtrace(regs, tsk, KERN_DEBUG);
> 
> Why demote this to debug level?  This is used as part of the kernel
> panic message, surely we don't want this at debug level?  What about
> the non-unwind version?

Right, I wanted to keep the old loglevel in this patch - KERN_DEFAULT.
But got confused with log level in unwind_backtrace().
Will fix.

[..]
>> diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
>> index 0a65005e10f0..caaae1b6f721 100644
>> --- a/arch/arm/kernel/unwind.c
>> +++ b/arch/arm/kernel/unwind.c
>> @@ -455,11 +455,12 @@ int unwind_frame(struct stackframe *frame)
>>  	return URC_OK;
>>  }
>>  
>> -void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>> +void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
>> +		      const char *loglvl)
>>  {
>>  	struct stackframe frame;
>>  
>> -	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
>> +	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);
> 
> Clearly, this isn't supposed to be part of the normal backtrace output...

Yes, sorry it's debug for a backtrace - will return pr_debug() for the
message.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cd6c5df5-effd-a1f9-8a25-9f5aac3a92f9%40arista.com.
