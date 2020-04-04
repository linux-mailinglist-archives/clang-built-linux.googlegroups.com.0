Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIXZUP2AKGQEVB7Y4LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 817E719E7B9
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 23:31:15 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id r141sf9285958pgr.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 14:31:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586035874; cv=pass;
        d=google.com; s=arc-20160816;
        b=QyUi+Ohx7sDDn1m1YaAIZ3nCiu5mDPxtQkaN8WWikfujVg45EaPCnX8Txy2qadWGN7
         KeMu4IZoA7DbDl8YE2ASrBEutMzcUl4zcwf+EhdDnmOYE7rriJQhW7IlT9CoS8rI6o5o
         okE79+eqHeF28L0Iv3fvtl/UvMf0YZ5f99X05xm5TjIMJY+z47yauWjmpp8cKyBT6zJI
         WCcdUlpLj6TY2BH2lzDlLSV/82VCxc4CcT4oOJKkaecFFWW0v2//QUkw3VMcPmVkbiF1
         p2cpzpUKDa8MRP+gUComiFU7Rv6UJDBKfxAszZiRRN9hFgOm91+T03nknx70PQzGOuSu
         sRpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=g2kZpQk0Z7R9ZfRGA1mOpeaUzliMStwvZ7IcUqC+7Z0=;
        b=ae5WuENV9rkMJsPiwEGVkhIz/inuE8QKlAfw7ekbiNokzvMo5KEe/RM2A8MdO+VcST
         x5PMSSAR/nIFNGUAjDgjanbxFv8eUtrLvitoZ72HJmqHhurtxDcVvYSq6+0OtwRn9kmQ
         eWiVrlTbaE+jPCMHGOQ1exLt9cSKy7YsOohcNypoc4HfN0uUNisPtZCkCZmszJC7blDY
         vwa3pz3PTiHTRdxme1SaswmJK3Bo0m2HQUzNOEHc3Ui7ag/LcB/Jkb3TGoHmXebSy+r+
         g6tx/J5xjTZZYyFy0kkUJG2wITQ2fwF0GSabq9UxHDiDSk5mqvOt9ivdi4aIHVKPGnKm
         miTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IMIgDKjY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g2kZpQk0Z7R9ZfRGA1mOpeaUzliMStwvZ7IcUqC+7Z0=;
        b=Epk7EVRtaNthWkskroVME6wQirSKNSs0MhwsJ0Fpb3Y4MaDYpv2rH01xv+Yf0ANvoI
         Ovufn3zqCX1Fmm2/EJd6gZvWv0YC62GemhvfA9i69jjvvFd5xHwTJXNZalx4VPuCZXac
         bY02bFOmLaUxbgpYABEft19I0GBusL+QZNroM6+jb+9Ooz5ZNyyr/n+XfqBJg+Gb2jZ0
         fH5SMq0kZxMiuSl6/u0URhu6+m+UpXJL2y6ydmdh7vhDNHguxXDd0i1aL3kZHO1fvdbg
         92z22Esqe8mE/kavJjjAhyN9viQad5u7dPDfoy7FkmZz2aGCVC2uBl7EeMWZ8xYowg27
         oGJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g2kZpQk0Z7R9ZfRGA1mOpeaUzliMStwvZ7IcUqC+7Z0=;
        b=OheHkUU9g5DJqXLnnAi1tYoLoabUjwUCRBLQOB+c+6sO7cRH+WABYxenuVOaKn/8Me
         t9P+e85xVzvR/4Y/oxWsMTt1v47Vveztj1gFijwa1uhZIJfC33TgdIMpcHgpXsSJiCFa
         tQE4j0UTgSoN+BkBqsIRPkoWvhCGr5xKQDZQG1XIlubJMZF9ArWISw2ZvxNSAYawk0wE
         B9CMOZsDTOFKPxJrY4CbFoHNSDBsSyLHDheOkDGRkEJztXNaqbOrSkXalUQhmsU/9BDD
         OQUgqF5Gr0q3e/aYvT3TCIj4tdJkgRoP26BIh2+trODs8OZCXxNCKRbMmnVkAlkBrDDL
         WhTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g2kZpQk0Z7R9ZfRGA1mOpeaUzliMStwvZ7IcUqC+7Z0=;
        b=aULXD5CWEFzvfjs0ty/t+W04DTyFJ2H388Fcjv3Maly5sfNdUhMb24pLXCldDbWQt6
         lY02Jo5maYPxk8JUAB99MNEXUIWyrNNJpzQv59WcuMc4H9WEU8QwF/JTq2bIHgLdH5c+
         uJegl+O+3pqeKi7fKFuuSw4N85nN5AnDPKzZbTr3kwZ7zBOicePSZc+YuOzQl9sDTbqa
         SDW2w5i42pEkYsiJ7eSsUf4lUxt9VglKu0sflTVGUQMzPAwPzh/ZYMBuqpr8W49uYzR4
         5nvuagYfRAW6Z7WLcuRFyz3FiouhpReal6skH7dsmfIoqMGtpiTF2PxzTO1Sc04YGvV6
         sJ5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY5Ieu2sE7zSVnf9sJfmzEKQkkru/EmuUVVgH5KCBulSU4FL0rC
	rOugZ5G/fLETH1XqVvBIH2A=
X-Google-Smtp-Source: APiQypKQayDBLJSuCNfvpINROhWHXpMS8jJVha+eqaD0ZNPj3s+k87TjSgmKFLroCNBbVjBP9sytIQ==
X-Received: by 2002:a62:3305:: with SMTP id z5mr15379691pfz.297.1586035874206;
        Sat, 04 Apr 2020 14:31:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls7872860pfw.3.gmail; Sat, 04 Apr
 2020 14:31:13 -0700 (PDT)
X-Received: by 2002:a63:ba1d:: with SMTP id k29mr14374390pgf.413.1586035873693;
        Sat, 04 Apr 2020 14:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586035873; cv=none;
        d=google.com; s=arc-20160816;
        b=TAz/8vCXqQGgCX4lyU8QQzdekq8xos0pmEsYhTCZ3lBc2S/LEd4N3BnKir8xnWDNXN
         ITsNCbagz8rstReaFqJ0/dKKB7SftzPHv1VzlNfQt7GD6TkWEEi9YYKvvjxJHfaBVlWB
         ajH0wVSTMb2ICDGxQHAIX/iVeu8O94jEmtABiwgdLbDAkE6FPNxQTqmc8Z9AkQ7t284p
         MdUHOE2hv91f5m7StYMcVfcTZwU0TUVWXk4KjAW7BeG8hTJXyfkws19422yhKYAjKt3N
         MDl36QsPMwsrhPDhg/5Q3VltDZ8M8kOf1zN3AJAXV/Pem1vXj3SFcyaLt4L5htpIvokb
         UD9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dfxv/lW9xx85SKFfGGqKsuwpmewMPsXC7ctsHsYfKHY=;
        b=Op9pMhCHDs9YeGDTinp7I+FRmACHEmCu/n/eolelfUlqz13Hh3GIzydhj04SASb9Vi
         KXCvmOblfsCeVZowbVNmIrSv2r5V276woUosr4Lef1o4OGw9RfzbuJEe1YLG38nzC4Lf
         lfoCYnti73AKlHUzWewEyGHB4JZ90QjkbEt2G9hKiLTHgtzHrp5AI/TMojh4YIEauL1S
         rhSFdWg2k7S+FwpsnIBPfj9Ue8sfct+7a3JDSuNKGivyXio8ZygSfSOv09qMWBY7PFhL
         Y1YXJM67rgzrx+i0C8MnFuTJnm/rjxVsBDK2r0+iw0rmbBV3vx1waNO7LFWoLHg3I9Cl
         Us9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IMIgDKjY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c16si1170800pgw.4.2020.04.04.14.31.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 14:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id x11so11280351otp.6
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 14:31:13 -0700 (PDT)
X-Received: by 2002:a9d:1a4:: with SMTP id e33mr11417509ote.343.1586035872897;
        Sat, 04 Apr 2020 14:31:12 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e64sm3257559oif.10.2020.04.04.14.31.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 04 Apr 2020 14:31:12 -0700 (PDT)
Date: Sat, 4 Apr 2020 14:31:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.4.y 9959/9999]
 drivers/usb/gadget/function/f_uac2.c:601:40: warning: variable
 'devqual_desc' is not needed and will not be emitted
Message-ID: <20200404213110.GA34553@ubuntu-m2-xlarge-x86>
References: <202004050547.XbHnZtwa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004050547.XbHnZtwa%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IMIgDKjY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Apr 05, 2020 at 05:23:53AM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.4.y
> head:   1d2188f191be66572f9e20c9486eda0544ab750f
> commit: ce513359d8507123e63f34b56e67ad558074be22 [9959/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: x86_64-allmodconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 62f3a9650a9f289a07a5f480764fb655178c2334)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ce513359d8507123e63f34b56e67ad558074be22
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/usb/gadget/function/f_uac2.c:601:40: warning: variable 'devqual_desc' is not needed and will not be emitted [-Wunneeded-internal-declaration]
>    static struct usb_qualifier_descriptor devqual_desc = {
>                                           ^
>    1 warning generated.
> --
> >> drivers/usb/gadget/function/f_printer.c:164:40: warning: variable 'dev_qualifier' is not needed and will not be emitted [-Wunneeded-internal-declaration]
>    static struct usb_qualifier_descriptor dev_qualifier = {
>                                           ^
>    1 warning generated.
> 

Not caused by that patch.

Fixed in mainline:

https://git.kernel.org/linus/d4529f9be1d72919f75f76f31773c4e98d03ce6b
https://git.kernel.org/linus/e5a89162161d498170e7e39e6cfd2f71458c2b00

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404213110.GA34553%40ubuntu-m2-xlarge-x86.
