Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBU4Q3HWAKGQEGW4G7LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B9BCAEFE
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 21:13:23 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id m17sf356775lfl.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 12:13:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570130003; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/RUDPb58jI1xl3RXnapojvSZOBkDbP1ucM+pTVdjVKxjHzL61zOefSBc5M60xHU/k
         9tGj6OF9b1KBtGSM8pnB2k+XKt8VQiXtnC/HpQtZmdaThgcNFwsazcXYDD0tMNdx2WST
         onXtoaUuJaXOIl15iEQGSFK37tiUgIBmAGsdqKGzFFVP2T4zHtUdi0ODFVb5dmGN/dFn
         qriB5/3O1Otgs/shCAvG7UIySXgXMILsFws+W55RXBgVA6bCpd+9Rwn7Lh5wSWPFbSOJ
         UvLZjoXPmrUyCZHssyUcjpGmb6LZKb1lDWo9CJCqO72Lr6nN7HPH4vvNm1lOgRki92ZK
         5SLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bST8P2SA1MvRpvgZcoqjJrH0370LHvIuyw8lUSbT3g4=;
        b=s0HURjDSK1meIge7jLYlFu1SwGBR0WuooA998h8WsUY/jxICetzPbZ87N2MNPhu0G4
         PJSq1OfeJN8JCmPLXPsgVmqpMc4/cc0zZjYK0+GSuZidMNWwGg4vhK7aKHTFk/SAWKfM
         yqM4hea84XPf+KUfggR+8/n9GzKVpQRXF3+m7647o/f/iOZLDI+5c3+oQDDG3LAruD05
         fd9W1Uh6Evpw9XHWt0mB9BoF5oV9IFtltHzzNsBjag1kOSrgzp+4zTMgm0Sdf196J51F
         puml1hY3n1bX9nrZX4DCFlfXxW4HkODXbas+1LRgGqbDDVv3++Dt3tFdTe6jl8F7HUAR
         PNfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bST8P2SA1MvRpvgZcoqjJrH0370LHvIuyw8lUSbT3g4=;
        b=QY+3zYMQEQwPquprqB5RaVPOlnSj9eq1KZkurhz+qfHk5eS0b37h/+Qy/8cVvW97eM
         ArgWNjgkep9RSDm3zQx/ck3vel8cQfLcV7dragW9iMCmBkWVNZEAyv+b0g7Qw3DyOhHF
         3oLdVXVlY3xPsd8f7QoXAgUAC/dER353spBBBU1NWOguls7TfTCkteSuFW97ikunsczu
         2RqyWd1x4IjgUCGIvh/ZvgLuIK9I39j0NirQ/3Jqf5Vdn6UAEy8pJ2boVcRm+q0K+F2L
         wJgEhJs080sS//ak0t9FT2vMbDYDkfQqRxZ82YOsPOhhpT86yqeI7HmW7JlDbItRHelL
         i1eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bST8P2SA1MvRpvgZcoqjJrH0370LHvIuyw8lUSbT3g4=;
        b=fyyeZSaqHlzXfLLypApjDhEI0UyS/NShCudKFsefQgH8ePa3Xqw9AKPTg2kd40fcKO
         3k66YGsxqOBY4mgoWpGcJCm2JRMBSgJhn440+XtXNNlH4gu2VHxid4csYW0pHOBBwiUq
         /r8r2wLTa+BBB+WjN7CtlnVkqdwfBlhWorrNlQpCFc7JOSoQS7TUOIg1nA47b8KMDFYs
         Dz6W9+BNiqqn/Kyp+X4QaGw1K4Cgcf1RyxNyzEQ/Jo+twCsD8riHOqUIWeR8wX0Vn9VT
         q4HLi984PRnslq6++NMy3ZwxhI16x+caD/Xo9ArbNkXy0BXwiBOTdySwW/veJS3lgQVc
         LD6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWis8Ths7oO20JjUWrruvh+xZ8Hfy0VQk+rjtY9dWtfWBfNfZg+
	V4mu9xXrx0jHjubWsSKHZKs=
X-Google-Smtp-Source: APXvYqyhRgFs3s0TutZygc87yUG+80oUOj1QSCfAZx2MezpLVUtOamnHQzhSAHXmE5cKoHAWAM0Igg==
X-Received: by 2002:a19:c6d5:: with SMTP id w204mr6432079lff.53.1570130003295;
        Thu, 03 Oct 2019 12:13:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f613:: with SMTP id x19ls696656lfe.16.gmail; Thu, 03 Oct
 2019 12:13:22 -0700 (PDT)
X-Received: by 2002:ac2:44d2:: with SMTP id d18mr6874445lfm.67.1570130002788;
        Thu, 03 Oct 2019 12:13:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570130002; cv=none;
        d=google.com; s=arc-20160816;
        b=XK+SOEWWAeYYfda89U/lCx6LayjFXdwAN69E908w9uTCtphmtWM8uxuzDGfN2ICgIK
         u/aBZEfxRG1eTT3eulO8fFeGX1ZGMh+YKB5Vney7wOtXXscGkG+Xm/dO5xhbXwo4pNyF
         aYjp4NUCloM92CiGNS3I09zV09KdkTU+GCAqV/BERGL+6QS8WIaKVcZA0zmlKP/+/zsN
         nJxZkRJ+BvPm51nPX35MZnL96jHJpzYfSpPY7agMQow/vuM4ztNFwuJLMfAny0Wida2P
         WEJEacSQ6zUdS0t0lnxBzeP7CgKRN/iQIazXBaKRG+o6srsmSp/zsZ0gIJuLeRwPi8b+
         uOjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=qf4QH5Ba9UiTyRpS9z2U6XumxHrtjnYMMsIHrVLjpao=;
        b=0KJZW6g4TmA3PuzFWdRUOpSptGSARhOiblkVYqszaMnn5GqlWvi0Dwrbr4YvyMDlWx
         AcI1hwI8Ozx6WtiU4PrchuiOXc/wXnBb22u17vFnnUivmsXsEcY12sQPJRwoWotgS5bx
         YFyhpEva/bqzXu0HdqmD8CD06XknbaU0Har9z6Bu/ZDzW9gEMQX81c5YauduWhZaQEEa
         ClcjjTmQhxqfUi7fGPt3z4nRW01kIPqMX9+lf2FaaxXuFlIM6L2zyShkdAI2lBv12Ljr
         FyLI0ljpm2LqD3Fb2WYmpPtmzSmLnOWkh36K+acwKMHbNbE8P0y9ldIotNYTycjBdz79
         V7FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id y6si264657lji.0.2019.10.03.12.13.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 12:13:22 -0700 (PDT)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from [213.220.153.21] (helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1iG6XP-0007ex-8g; Thu, 03 Oct 2019 19:13:19 +0000
Date: Thu, 3 Oct 2019 21:13:18 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>, Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] usercopy: Add parentheses around assignment in
 test_copy_struct_from_user
Message-ID: <20191003191318.q6jvzuf46gjygpux@wittgenstein>
References: <20191003171121.2723619-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191003171121.2723619-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

On Thu, Oct 03, 2019 at 10:11:21AM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> lib/test_user_copy.c:96:10: warning: using the result of an assignment
> as a condition without parentheses [-Wparentheses]
>         if (ret |= test(umem_src == NULL, "kmalloc failed"))
>             ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/test_user_copy.c:96:10: note: place parentheses around the
> assignment to silence this warning
>         if (ret |= test(umem_src == NULL, "kmalloc failed"))
>                 ^
>             (                                              )
> lib/test_user_copy.c:96:10: note: use '!=' to turn this compound
> assignment into an inequality comparison
>         if (ret |= test(umem_src == NULL, "kmalloc failed"))
>                 ^~
>                 !=
> 
> Add the parentheses as it suggests because this is intentional.
> 
> Fixes: f5a1a536fa14 ("lib: introduce copy_struct_from_user() helper")
> Link: https://github.com/ClangBuiltLinux/linux/issues/731
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to:
https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/log/?h=copy_struct_from_user

Thanks!
Christian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191003191318.q6jvzuf46gjygpux%40wittgenstein.
