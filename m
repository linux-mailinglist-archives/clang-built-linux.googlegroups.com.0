Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHXQZ76QKGQEKWRSDJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 799522B69C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 17:19:43 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id 25sf10212532oip.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 08:19:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605629982; cv=pass;
        d=google.com; s=arc-20160816;
        b=vyWoJ7aPZbWT262GTRseDZljmroYPs9Zvkto1IbRkaBBBxv24eZY2qjI/QQAWY4kXH
         FZkzEqqxXcC2Ynnq3+APB3qf7xc+C346ycR7NC57KH2LfJb84Mydvj9F0CZOjklfObUe
         0sA5glDoP7MUXglLQ/3G5N95hbCAUXIGyqq+1apc2LQDvoQDe2eIODbjbG2lbqgqvj2A
         EEbni7wm3IZTiZbwlI8ASsX5RLN35ULUkZtHXkUMQqo1B03okbhtq0y2tsbVDbrJ5d0B
         iMLzq9NzIQtRejOzHs5q2kBzhswUZ+Sm9njwjB3/qxWdfQoPBhiTfCIFG1VzZfhX/T2d
         xuLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=MtWIperRiv8IoYTXLE54vsDExlDshv2YkCUBE1QAfNE=;
        b=A5TKvhUGDPaWGz8+ImOSHEN/zjy56eXO6g3UjtY38O0sQn5JT5NYnaeF6hmxheZXyt
         5JOY62f7WgavhoLdSSpZ7FtfDgO/5m/pWJNbXv6li6SKQvX6TU+VEcjH3Aq44h1O8E5e
         R6ERhryUMuCK79S80XU9wbS/GsCAsZL11SePCNSgninLBFbxY4VLLzMF/HoofT969eXk
         1TXt7tZKaQNVhDbFmqCsoeqQgK6tksHxbsExqZsMP9SlwOcGe89x0jBo7B8UeCNfQkAJ
         r/QD6zUJoZyNYCs2iaLB7SW+Js/s+yLmwddhdX379mKPag3MZMophpIw9FmRwaaP6MbC
         xJfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=quCQWsqM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MtWIperRiv8IoYTXLE54vsDExlDshv2YkCUBE1QAfNE=;
        b=nHwXKHNrGRsG7r0+QCDBLjOaeqOVycYkdx7wynYrNnEIZw91Gb0bQEQqsA+CWlm1ni
         sKNnbx4FZu1NgLxKjb+4ODeEhoEeOy+SG26GYpN0YWwmCFCefba2RfrGDhsY9uDRhAY8
         O7ui4IdR6nuS5PQtMer0+PTHLZTyB06/t41urevyeSQzPTDyZRN8LNQ0CM5dms35snzi
         1S2xiwV+5yUqErhXUFHRN2Z1D9W/QifzxXEioF5f3VDK0WeEcaShJ73/fPygBdbKFfnn
         GAwBKSW+Aw9vx+iE6V2xcLNOyH33WRGZyXjRGGXDjfQTi4BBK81cDJQJKaWK26WnZ2gA
         8Puw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MtWIperRiv8IoYTXLE54vsDExlDshv2YkCUBE1QAfNE=;
        b=EPTcE7ekjONC9vyPv0efqolfXa4FZDmfCCcma4pDYayr3f/irTuPWK0ST2V2pay6l3
         9NLeYlwSGd6B45u2a22YPbixXrzo0JbeXEsleY0Q9wfJ7PW2SnPxXNBk6tA0ZREdtZgj
         OTAoccEMb5rgs08cqhUOKf3tY+w6CXcPbdORmxuB097sqpTQF10sdejgDt8VpP3VzEIS
         WXmwbtPB2mGi2Ia1Ku/hLuGItsidt3LH0ZlIXtzgx6tCk0fAL5/Q0SELXJmN5DuEcqq8
         0fgaJRwNB3wBYfOEqcXH7IR+22A7gkyGyVstE9NhvWT8H6gp7l6ZxNTFNksPuPjMsjRE
         b3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MtWIperRiv8IoYTXLE54vsDExlDshv2YkCUBE1QAfNE=;
        b=Ul/ntge4ROXJR1y21SclFfHkclgLSwHfMki+xbLb/jZEtALYaDWgKHjBLf9GX4f369
         z+knzgYy/ER1/icGvCo1T373zT4yiBJoqtbnTmUcCQEc10N8b7pSsDBgdfAzH2Echn4J
         DZft21vAYlUlLvB/MehAHpHXQ2R6A0ZQRY/7EFFW7WRR3lCUWfiG9ZQ8A3GAHoF7fxTj
         doFLKyx52opuoIO5wK5e66e/81p4gkF9CYrs6AAQumPk5eAMT9YVzges3yMEBDxN3Vjw
         4sz3f1xIZxdfyqwrcN2+xojcMnfWed/9vL/X5zgwlsL5uQyEaaThsHAooT4zDvJroSrz
         LyzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E0PpWx0Wf+DFKLw8V+2lD/d8ppSER3VtiLU4w7sPY3tFdRmLJ
	yHKpF6u0FsI35cw4qR4tUQ0=
X-Google-Smtp-Source: ABdhPJw+old3iBuLCNjL4SsTps2f3qIeifwPgYnGNf4tKIFmIK93H2mka6t8FP+DSxeMfYrNXICdqw==
X-Received: by 2002:aca:c554:: with SMTP id v81mr2851646oif.143.1605629982322;
        Tue, 17 Nov 2020 08:19:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls4120943oib.0.gmail; Tue, 17
 Nov 2020 08:19:42 -0800 (PST)
X-Received: by 2002:aca:1c17:: with SMTP id c23mr2833738oic.117.1605629982029;
        Tue, 17 Nov 2020 08:19:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605629982; cv=none;
        d=google.com; s=arc-20160816;
        b=mJiOQduW3KWjDeJGl1PVdT7TI+Ua7UpooQ2LNi5GZ9HKWy81tiLEf00KgI9/P1aLNl
         v/rQC1Q/cf3CfPk+ZqkCJsWQrrNB6UAaom7oTQCgCc2w53xLxLSfgpjvaqNEuNcVgmzR
         HV0YatJwSDU0pxtYwCHavf8j4zrI521Sw8P9NcAaIxeA4BNOE8USdeIqpIdP3DVQVS+l
         H4DTaeLtPtTvind4QIk8uJAxNN0rSSxspmHRZktyJ9qcj4Sj0RusYgUD37viP8PmHA+h
         jynMxqNsWa89N0DEkHPXduk+We4eVXq0BMkOcq4nXECdzlPnUgUa82hAyL9qT20Sf7KC
         XNQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0bP0N5G3q4990O7UPG9qRselKLApk1bnmbnwIqPu2sM=;
        b=aRdzjFwM5/3D1Fi+iDrByZOh/HJqGJZyAayhfz6N96RhzRijT+oHia9Ov8R2UNyvE4
         az8auBtAy+CGanndznP6fMFFp0uc3S1/Lm09tsTg0HGDg4+V5DiqlkaJRV73/1BSSXXj
         /I+p8ymjmsqkz+FzjRZ2q7WsZNNrG4ADRxT9moHu1QQ+rPAUTtMHufnv7AGEoZgcms7l
         Suzk8Hy8+FuoSWkZ3A4XVpRMbDOVw20BkzcktheQNReaJVLs8zDbNriSay/SCoOMyz8U
         8aRGShur1jZS8h4TBFPMi/ZhLN3GbpLJ1feDgC2WCflJM7cRfRxVEsdKy88++74g5V4l
         dUcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=quCQWsqM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id k134si1162632oib.5.2020.11.17.08.19.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 08:19:42 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id 11so20883438qkd.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 08:19:42 -0800 (PST)
X-Received: by 2002:a37:4948:: with SMTP id w69mr299290qka.472.1605629981408;
        Tue, 17 Nov 2020 08:19:41 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b64sm2779946qkg.19.2020.11.17.08.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 08:19:40 -0800 (PST)
Date: Tue, 17 Nov 2020 09:19:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ring-buffer: remove obsolete rb_event_is_commit()
Message-ID: <20201117161938.GA1271942@ubuntu-m3-large-x86>
References: <20201117053703.11275-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201117053703.11275-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=quCQWsqM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 17, 2020 at 06:37:03AM +0100, Lukas Bulwahn wrote:
> Commit a389d86f7fd0 ("ring-buffer: Have nested events still record running
> time stamp") removed the only uses of rb_event_is_commit() in
> rb_update_event() and rb_update_write_stamp().
> 
> Hence, since then, make CC=clang W=1 warns:
> 
>   kernel/trace/ring_buffer.c:2763:1:
>     warning: unused function 'rb_event_is_commit' [-Wunused-function]
> 
> Remove this obsolete function.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117161938.GA1271942%40ubuntu-m3-large-x86.
