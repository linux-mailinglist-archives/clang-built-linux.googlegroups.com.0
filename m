Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNX3WL2AKGQEPM22SDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 5165E1A1320
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 19:51:52 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id np18sf195522pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 10:51:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586281911; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSoWRRygOORuqFFc9rop32TR4L8rj6eIAz2mCdy6ZhpFDuEIW/cf7nY9bnrbPXnzwg
         AP+hb0dO3KOQ3IRkLB4Y3mWcPhbkOCzXBpvrpq0sgFjLjfu5JxWJGCN0KA3zjhzGjGxw
         U38/yMKVoK/xSg4CYVKkqxnHq1XBhihROlHDNv51iAG3EFnZg4bDeQwi9GLi1A5j/wfQ
         bWs2BHrmEJ544lFOPnggKw1BRE0dIWrkN82KnSfJbH/2Z0rETjfM8SfSFYKSIiCgvbva
         GjD+JJO0aEcKdcPHj+/wa0iJ3+gGZWyrY74wJKP9K9cBy92Vrky4Tq2sNOw2EPoKwEoN
         ugcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TcJnHm99ujHWPFn2xGHX6LN3KRMDYNkYZvPhiGRK/GY=;
        b=SLB2kHW2Mgs/sJuP9srtpkDF96F39TZEHs5CGAgnPPVDcWaD+h6olXHd7e0V8wUwiq
         SWGcr76jFoF1wiFQwQ2gKXOtJb+xPsgWJfXLlomSq7/WZLOfRjx6JOU6ctGkCb3A3GZY
         BOq2tVDKc52CvAvm9rFRvIl1bgUzpBM+x71z0QJrz4mGEWpwl0sBSzWzZvhbPzj2bAmK
         Iy/UHTKBN0xWyafxEfu2nrmIF+34yHnzZ8qzaG2+Z+tWI3kHhazba3pMTUjDTfaNHf17
         juV+Tly74Yeb+2/X2AQvNm+M1zGwbreys6E1nAd2YkqCOIjglgORrzCgeO6+YJP7awMd
         A7IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rXjH85gn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TcJnHm99ujHWPFn2xGHX6LN3KRMDYNkYZvPhiGRK/GY=;
        b=FW9xEdg/7Ko1PC802XckmTWsYdF0IF4hRyCpLftThTsITNPzjBBx5/o5MOOS34Wy+1
         yoboYgksbEprdw42B9uaY71hLqwH5XeG3nZRrVX5agvv+U3UddlRV7p17z6f2rWlwoPC
         RogU085TW9rHQILrolD6I8RPJiN+ocj1CB3VarArkWh82Nmiyh4N3EluNYWmclLizYcN
         zWxxe6YEzdvxTngedQPN5KYg1OcAUi9c/c4xWl5l/z02FPHwPNCs+dgLaxKPFFVYHDQj
         f/Wha9w7qRJcFXOQkp7gq3Qb47b6707EoeeLnUqVYcA9HqBNYOHFYml0uR1qsNewUo//
         ZngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TcJnHm99ujHWPFn2xGHX6LN3KRMDYNkYZvPhiGRK/GY=;
        b=CAsv3CrB2b14eUviT+cIsiujFoa1lC1nRcmsQsyjk6/rt+SD70VaeoIVj1LJL+apCK
         Cdjv171hGC8EBf++JrLTtZO4mHmJsqCo5UfUgRKhvhRIXC9/Yod6Eckv0ODQK+JwvXCf
         RB1ZY4wUeGDFxqmHc3vbeZ46rxzA3W5vOid3ad0bx2hkhjAJozLtKv0cVwkGHO1uwBqD
         VtcARyR7jrwlUj8rgRdI9l/ZBiD4hWqmSgbYt7BvIzPgxisfCmG/D9FQ65bWCuofzQ24
         IJ5GBjPsPkdWLPE8StbpLKyV0ORD37NeAHSdHXeeQnlTzULOmrlBtFw/yPqv73WCrX0w
         3Ihw==
X-Gm-Message-State: AGi0PuYUhmrOf1kJN1CVcLECLMdiqtWORkktcyuRIAlyGdEZjvP1u08w
	GbPTL8tHyNt64Iqr0XD0ZmA=
X-Google-Smtp-Source: APiQypJmkgHnb/XfP5zUrXjO6P6g2seonxiyGqFy2TdL8MGZ4e6/3eLLb8okElDgs9E5psbGpy/AdQ==
X-Received: by 2002:a63:7b1d:: with SMTP id w29mr3103749pgc.4.1586281911012;
        Tue, 07 Apr 2020 10:51:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls2460502plo.9.gmail; Tue, 07
 Apr 2020 10:51:50 -0700 (PDT)
X-Received: by 2002:a17:902:b707:: with SMTP id d7mr3290852pls.297.1586281910570;
        Tue, 07 Apr 2020 10:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586281910; cv=none;
        d=google.com; s=arc-20160816;
        b=jE7NAvOA24U7Nh/sTbQIi0kWuJ+JJDMbWuDn5I8MRlQFts5gd9fqmAdAw/1lVtcbkY
         1h7YztPe++MPu93gvdcxtxZbTIidc7d3XGm61YC+FON0Xw2Lc9vPsm6sxqYVjxNRirTF
         3qu6mUSPzrv7K1b7jjkAX5C6eP0+9nx5E3MjEPaZ/c3VrkpN47lemBO1+lAMwFDG+K/m
         7eDvncgOiniv+Kotruy6N8VzZuDI2wvlMTPYVrWwflsorTHoyObdSVsG91O+3UOfNq1y
         QmQ9aSOO3HM1jKBGr53ACtSNNdzrvoWFsaO9eNf9i7KUoD0wXAJz7Gxr8LOgB80II161
         Qd/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SAa0Ors1dMnu2NkI7Qn6kRUyaYmioeIkzvexQweMvVY=;
        b=PggtIGHH9y8HFKSqBAJd/vcFF2FxGzQFjQujCOPw/N3YeP3bToJcn91J4kw1XCqazt
         a/K6vmnA2080JN+lmj0+9X7ukXhkUepC3uKxkHL4k2xdJPE5N4hJn7wVjQZdj28jVdQz
         5oTp76oW7h9jw2nJD5NeS4onq/McclVVU6S7hFSwMlKOe/db7v4IMXd+XL8niXs04M7e
         FEIfBofJDWMbUA76dtNkQ3mAjbZtux7lIIn20wirV94lkbQKSnk3muFL8lMvGEW5U7o0
         Hjy7XMHqEGvzaaEpak+edyD1IlXXYqgVIGzeEJDHl69iiWLCgxpzjMKTw0wVE7ACuYa8
         jRzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rXjH85gn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a141si355278pfd.5.2020.04.07.10.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id w3so1520423plz.5
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 10:51:50 -0700 (PDT)
X-Received: by 2002:a17:902:bb91:: with SMTP id m17mr3420280pls.223.1586281909901;
 Tue, 07 Apr 2020 10:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <202004080034.5w5XsucF%lkp@intel.com>
In-Reply-To: <202004080034.5w5XsucF%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 10:51:38 -0700
Message-ID: <CAKwvOd=fsR9XE1j6pVi=7Ncb6Mbz9nvdUQxkA=FQHxMNWU3GVw@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-4.19.y 9916/9999] drivers/pinctrl/pinctrl-ingenic.o:
 warning: objtool: ingenic_pinconf_group_get()+0x12: unsupported stack pointer realignment
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, David Gibson <david@gibson.dropbear.id.au>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rXjH85gn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Apr 7, 2020 at 9:11 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Dirk,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> head:   6e19c6f2d2653aebd7d307ec43293f579e21604f
> commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9916/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: x86_64-randconfig-d003-20200407 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3185881d69022e03b300e189838b0599ed417be5)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x12: unsupported stack pointer realignment
> >> drivers/pinctrl/pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_group_get()+0x0: stack state mismatch: cfa1=7+136 cfa2=7+8

Apologies that the bot keeps converging on this patch; it's not the
source of the regression.  The build was red with ToT LLVM before this
patch landed; after the patch landed this warning seemed new, so the
bot converged its bisection on this commit.

Also, we recently turned on Clang builds for 0day bot, so it's digging
up interesting bugs via randconfig testing.  This is useful and we
appreciate the reports, especially ones from objtool frequently find
compiler bugs.

I've filed https://github.com/ClangBuiltLinux/linux/issues/977 for me
to follow up on.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DfsR9XE1j6pVi%3D7Ncb6Mbz9nvdUQxkA%3DFQHxMNWU3GVw%40mail.gmail.com.
