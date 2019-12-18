Return-Path: <clang-built-linux+bncBC42V7FQ3YARBIOE43XQKGQE7V3YGRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f59.google.com (mail-wr1-f59.google.com [209.85.221.59])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F87123E20
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:50:57 +0100 (CET)
Received: by mail-wr1-f59.google.com with SMTP id r2sf292359wrp.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:50:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576641057; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCOzgpRoczAYdEBVrK68dz9s8VKHQm3dgcJnEX2ym/n54Cwy5bWPf5FrbA4PiGCvyu
         9NJ/27CJDkSG+/+qqXCnhCcWcjCpGawftNd6exJtq1XcpTZ4RD4CwAPk6/rJeKjg1kKV
         DDIG3zpyTr/8pWPzsHwlYIO9J3lVrfshdnoQk+uZQF/FtV73MnppVsARBt4oE8+1i86M
         wkO/FKO7VAQAnKwTiAMgO4MDo4VYaM0glFDmyW9aYxHM9eCRXRPoWLgO0a113GcK8cgN
         aLvIvxyNWdabJl6xHQLjiG9boTxZXlk9PDPbqrI8Zct3tKHrcrhwGLC0Qx6wupkchmRv
         sh3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=mvMEi3z/+3gIxy90qQWoApAXN3Iluox/st9Jd4fgAnQ=;
        b=YIVpAPDlLPLmblg5eEJWCUeboxEaZWLf0NG6xgx5l+O9yW7WsrSpJbFJH7ImM4R5em
         oBd+Y4XpG7CvZAGdickrz2ouDbWYD7iZdjdGS1G91krOI/cWlcjPLRbinIr83q+e8mNP
         BtxjzOH4cfcjrJncYdLU6naGJIAl9B3BmOQ+jt8nkqV8h9SgqBAgqhpDCNIbNsVD+GPf
         VX9Ianrq4XVt7AeYl9oN2OnxsV4graOOlfnjyFcHXvsFGvxFaqcbpFeaNlK7joOxHkMj
         2Qpy3vcI3geGtsybCYEcDmqAK3d0U6oWw1BmQUw1qKBwvJ8auduTwqEwFXskQzNKsgdh
         PFAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mvMEi3z/+3gIxy90qQWoApAXN3Iluox/st9Jd4fgAnQ=;
        b=Bg0bK4qRSO58unPENRYac0dvqfqswohl/QOaSAjaCPqOKu5bTnZEKUGr+tPgsB22Hz
         fk3nl6A1e9oD3fUxCnpNenjKbBFL+LNdPLorar3qeTei+z54QaKrWFsObu6wkQ9qvf1q
         cV7vf9T1o2P6Wa5AmfATBNDTjJhIBaHvJjmBrCQ81prDyrjzFGjccoWY0OFgQjfLCNXw
         wEXZUN3s2y8cJzsVQ8JZIbye61DNFOyhbpHaiKcFhJGoMEExnSwQ4kJs61zGOL+hsS0L
         WmM++1+x4oYCidNLaVUJn63UFzps+3JxW40yoMb0Akd8PCBLbCuUp/EWX/TnmmezwgU/
         xJEA==
X-Gm-Message-State: APjAAAXLR/PaO+UdPe4hZ18aEpyYp7Z/5fApJRwtflPTvLSawscqlABO
	Gvwwo3ySgO7lu3np03HQz8E=
X-Google-Smtp-Source: APXvYqz98MdMWb9+wQxzTZLrEev+HMZIsoXWWxHIzcodp91ljjiOqqpC7G+++1rJWQ2FNSlCrwjMsQ==
X-Received: by 2002:adf:f3d1:: with SMTP id g17mr1456480wrp.378.1576641057634;
        Tue, 17 Dec 2019 19:50:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9808:: with SMTP id a8ls139212wme.0.gmail; Tue, 17 Dec
 2019 19:50:57 -0800 (PST)
X-Received: by 2002:a1c:1fc5:: with SMTP id f188mr373791wmf.55.1576641057039;
        Tue, 17 Dec 2019 19:50:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576641057; cv=none;
        d=google.com; s=arc-20160816;
        b=dp4aysxz+bm8Y1HyOxZJCkX2csQpEojS0BnKc5Lbbq/cNTO9tl08qwP0k14dD0YePo
         ahaOPsObPlH6/p8+NNIwbd/6+jjLkD78UE+C2cbfU3qZMCD/6q+GVh15comkfZx+Oz4w
         IP9Is48OfaPLiuvhFrGVfEA/BgORcKmU8afbFLAnL6Zd67X0CpofOx9vvbTQRE7mS7Xp
         5oBKbsf+Dn14bLG/c08OvgxPAYbwB/o1oltsGaMi7HIGnvCTYH7qReYZ3SJvIFautgR9
         IVh58Sx8+Kh2eLN37XVw0SVY2k9myzIJS92161hzGTWSYqyoNwyJiNNXV9fPdkGEIDtG
         VAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=zC9KE699fRGcQhVSf7Ehl1vDn5EDIVaQ1o/vOzt/3Lc=;
        b=IPisIgzVKDKmab3rJKDaorXds8P+ueJDlIbndTTLmmKtOs+v3SZDN250/16xyfTVip
         hUvjYiduQwbwzkVSDdahOSQW9nwD9Pejf719JK6fwZIAWY+VRoH2qbo7MEALqomkGTNq
         7lA+x/iECCLKp8TdxeGeUG4uY8+ICCTbQPywXerwpTuWACr2K10kwDPW4+RXb0kN1Eze
         jOKa03B2USs4uypUI+V62tJRUVfZKzbuccl5SmMDy0BX2SQUTl7qTFrMA7wMNp0jWOvk
         iJdDOH9pgo2YR9S1tCOUiWgw3U3GlWWI9vBpuZDN+MN8Rd5FsYMnGB59i6Za9fIGYlQ1
         mEgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk. [195.92.253.2])
        by gmr-mx.google.com with ESMTPS id s139si170512wme.2.2019.12.17.19.50.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:50:57 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) client-ip=195.92.253.2;
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQMR-0002Ac-Gi; Wed, 18 Dec 2019 03:50:55 +0000
Date: Wed, 18 Dec 2019 03:50:55 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] vfs: Adjust indentation in remap_verify_area
Message-ID: <20191218035055.GG4203@ZenIV.linux.org.uk>
References: <20191218032351.5920-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191218032351.5920-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Original-Sender: viro@zeniv.linux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of viro@ftp.linux.org.uk designates
 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
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

On Tue, Dec 17, 2019 at 08:23:51PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../fs/read_write.c:1760:3: warning: misleading indentation; statement is
> not part of the previous 'if' [-Wmisleading-indentation]
>          if (unlikely((loff_t) (pos + len) < 0))
>          ^
> ../fs/read_write.c:1757:2: note: previous statement is here
>         if (unlikely(pos < 0 || len < 0))
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
> 
> Fixes: 04b38d601239 ("vfs: pull btrfs clone API to vfs layer")
> Link: https://github.com/ClangBuiltLinux/linux/issues/828
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Egads...  This commit message is way, way over the top.

1) the warning is more obscure than the problem it points to.

2) simple "statement accidentally indented one column too deep"
would do just fine

3) crediting the tool is generally a good idea, but in situation
when the quality of warning is that low you'd be better paraphrasing
it and mentioning the tool that has pointed it out.  No need to quote
the verbiage.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218035055.GG4203%40ZenIV.linux.org.uk.
