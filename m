Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDF357XQKGQEVJMGDHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6660D126EE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 21:29:02 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id c1sf4413721qvw.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 12:29:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576787341; cv=pass;
        d=google.com; s=arc-20160816;
        b=igCwRr9yyUfHWEE6aDwHQcFH6nj6okPjBzpXm+GVX+WGunvjK8ONQ/mbdwR8pksdgl
         Q646bBuNax7qFiNxCH2XOPbJXkeY3WboE18D4tVHWDEITlliMEsiPu/e9qA0g3nSUL9O
         3jkWYIGfc1wHb3VMRuYhuOi/zoMS2u9xU46R4r0yndn65v6a2PLK/yIyqry8onkPlYfQ
         7p9wwWwyKK9bq+RM9PpxE6z3Yk+cMkYVpY6zQf4peFhnILzlaKJkzMveGOlzp/sqhkG5
         BA2VLwogC66oXNoo8/7cd7w8Xh9kWD7V+NAMPRaTuRVZjeiFUZjtBIbObwTL34021GRR
         ilYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1YRGMZxnTOaL6gul6YB7zUPub/3eItsn3Mt5Xf6lbjw=;
        b=c6LDbOKjXwX5EHagVLQ2ktDoCkaXmbd/g77FBB7iU5V5XBS4BrcS08FE9gTiP9/NXW
         mCr6Zf9GZ/JJRxke6mLwYvLsBWjKNtmoHxdd1DCRnme3rbxdb5qVF3EcqkdiYpO5F+7b
         CgrsYgkUfs9TMnrRJVMJmWuyiembvkSDTHi/UX4cOA0S3U+ljExXwOs7fT8eWDacnuA2
         cRXz2JbOhk0NfPEGDaWKiFHgKjgmHYWoScNLDmsNCt/pEjznN3TlwW1IIwdAfrjtCF6+
         50T2eOEVSBHbwhQNv5YLFXG4+YQgwFyJsbyXZA/cqjBdcEcmlFAyBPq3rEutxPSbYNh8
         7/ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JHUvIbK/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1YRGMZxnTOaL6gul6YB7zUPub/3eItsn3Mt5Xf6lbjw=;
        b=EPY4mNOvLeOZBAu4Qy6A5XUjHI1VR9lvcpJPxxx4wsBsG9fPDWw11Lv0nrKgFngX8q
         HhK0ETGMrID9bbd5Csi0eB3ZwDrlL3dZRPRmyE/n/5TN6ubajYgM2xP3HsCH8zrSLc8E
         WKdyyk2aFS3OwvGPxOhv0P2lsS9BBNNXyQJLOn+zOcneRtwaldyMHWus4Y1YkzxMevjL
         dHCOTFYQpfJCzTbm1mMIHbtW43l8GZGQ4Tare5mCufv8Nynnzp9Nv9VhzDccBmOXZswA
         bPnklfkDmQiasuSoJPPhh7PkPoNUdunpU+6xgxeYRPfU5LrCeorenYm3vZ6AYC8nY50J
         MR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1YRGMZxnTOaL6gul6YB7zUPub/3eItsn3Mt5Xf6lbjw=;
        b=IX5tTCL+CYFSH5w6jTqa/lspSxLAq0Of/HfvciHJkpu8/0KDA4ZGn+l/iGuuSE9Qbh
         cGrIQcqDbQJ0eXffAGN7DxsbuRtFYxT8EWJBhDe3ihemMz/WGknpH6A2NlRnQ91eLawP
         pOrKNs+weCvT/11QNwqUGYtv0LD/A1NKmfCEGFFHYmJO+rDsh+C7YIc+EpWSJfIBiVl9
         Brgb+sXB7YZ+9D35qPUe8PzltpKSby45SQcRCNF3rKw8K3ICZnjxcMJwTDeMmmQ68yIF
         eFe/JRrkbkmHGS/MFbh9v6zR3dsGcLY74CUCxxXy2kvcb0kzFFs+gAXnb+GWqzLmXMAW
         htYg==
X-Gm-Message-State: APjAAAX3EwHEp+hAKBbPf31DKd6n1FJWRNre5J+vkRHI3mmdouc12Pjg
	iT/H60KQiYppZWWdGnZay7I=
X-Google-Smtp-Source: APXvYqzUBu3PAaq0x6GkpPi5Od1zvu9WdYXSDbQ4WL7pH2pM+C//69QCFr0PBZe8ezLvlvqqusmt+w==
X-Received: by 2002:a0c:c250:: with SMTP id w16mr9193868qvh.24.1576787341039;
        Thu, 19 Dec 2019 12:29:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e881:: with SMTP id a123ls2424169qkg.15.gmail; Thu, 19
 Dec 2019 12:29:00 -0800 (PST)
X-Received: by 2002:a05:620a:6b6:: with SMTP id i22mr9551193qkh.301.1576787340699;
        Thu, 19 Dec 2019 12:29:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576787340; cv=none;
        d=google.com; s=arc-20160816;
        b=BC8plM1qZM4VtFj8vWa7F/H8I4ST8wB2jmATOjc8HFhzEx4J3zhJ2A5/hYaqXYcXm7
         cl0cDBQaPNo2H1uE3ITwL5psNAHiLqP1HIzQEN447aGqAfqplIf51mGxrV1WEk+kt09L
         QcOua6nia18aXjwqXoL9Lax96cxyNewNXqJW45RYH8oJE/MPMIh6vzFGLRtE43bYFy1X
         i783UNMVYYKp99bBA3n2suLfFFHk2m/Tzqrn0V2RGjD1SkbNjnLRdbPhkYq9LwGlJbmP
         00cF34zNm8cMDxeydLfgjaRJPpROvehmyPQoS9kKqzOqd1wH/b5FFEmm7+jrQT1Z6YQY
         NSxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RqzxT6mrWsbaIeSRURSlPRTTrfPOgvLrfU674s46ZS4=;
        b=khGOE5/CS2YW5mEIVwpA4lAszbwgWtjuc4EqIiiRFV+K32fq4Ap4TEHdvMyFNvvTZP
         eC2MA61rOLb6utJ0TKdyA4RQgqIisovX4DvGNEwBblyxqSX1w5Gk9iIsJ5wYNAsqVAZX
         +JP9udTbWQfeS9VxlTiKamvLaw+ce70I0LDJvHPlcPVVnHPLzxZebG1LOrv0PtaPVI5E
         zQ868af2VjPkvLdmidLFlGMUDtnOeB3rDrNXmIWXusW9AaRDuIqHdkfUukh/hqdRgyuJ
         Wnrtxp/LLCkD23uQExW+vatUitCbzDD2qgGq31uurHGULtKDP+rr3UEBGdEwKYVnH9Rl
         NyJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JHUvIbK/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id r62si296818qkc.6.2019.12.19.12.29.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 12:29:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id r67so3056849pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 19 Dec 2019 12:29:00 -0800 (PST)
X-Received: by 2002:a17:902:9f91:: with SMTP id g17mr10768022plq.179.1576787339454;
 Thu, 19 Dec 2019 12:28:59 -0800 (PST)
MIME-Version: 1.0
References: <20191218032932.37479-1-natechancellor@gmail.com>
In-Reply-To: <20191218032932.37479-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Dec 2019 12:28:48 -0800
Message-ID: <CAKwvOdnJddjhijk4pyHuEKAGKFXiG200rvJg+Mk7EPw3oKcYwA@mail.gmail.com>
Subject: Re: [PATCH] ipc/msg.c: Adjust indentation in ksys_msgctl
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Lu Shuaibing <shuaibinglu@126.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="JHUvIbK/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Dec 17, 2019 at 7:30 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../ipc/msg.c:621:4: warning: misleading indentation; statement is not
> part of the previous 'if' [-Wmisleading-indentation]
>                  return msgctl_down(ns, msqid, cmd, &msqid64.msg_perm,
> msqid64.msg_qbytes);
>                  ^
> ../ipc/msg.c:619:3: note: previous statement is here
>                 if (copy_msqid_from_user(&msqid64, buf, version))
>                 ^
> 1 warning generated.
>
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/829
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> I assume this will be squashed into the offending patch since it is
> still in -next:
>
> https://git.kernel.org/next/linux-next/c/658622e448a6e6a6a69471daeff7e95e98d34ed1
>
>  ipc/msg.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/ipc/msg.c b/ipc/msg.c
> index 22ed09ded601..caca67368cb5 100644
> --- a/ipc/msg.c
> +++ b/ipc/msg.c
> @@ -618,7 +618,8 @@ static long ksys_msgctl(int msqid, int cmd, struct msqid_ds __user *buf, int ver
>         case IPC_SET:
>                 if (copy_msqid_from_user(&msqid64, buf, version))
>                         return -EFAULT;
> -                return msgctl_down(ns, msqid, cmd, &msqid64.msg_perm, msqid64.msg_qbytes);
> +               return msgctl_down(ns, msqid, cmd, &msqid64.msg_perm,
> +                                  msqid64.msg_qbytes);
>         case IPC_RMID:
>                 return msgctl_down(ns, msqid, cmd, NULL, 0);
>         default:
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218032932.37479-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJddjhijk4pyHuEKAGKFXiG200rvJg%2BMk7EPw3oKcYwA%40mail.gmail.com.
