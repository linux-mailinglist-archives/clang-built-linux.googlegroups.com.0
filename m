Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNPD7T7QKGQEVCHTEAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE202F5153
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:45:26 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id t18sf2071994qva.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:45:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610559925; cv=pass;
        d=google.com; s=arc-20160816;
        b=XTKzbucWmHF+LJ+lgGorOoncftqyRb9wsi2u3cm9hAv5ICdcbJctnPFDXXvdUfe5En
         LhdaVt2fPNsZt6Y5Eyp2W0vvanBCnNdHPoFykcq0tMx4jw3rC7u7WnQSh3pbun2ByBhp
         vpCTDNB644bno+CtgwGkEEr+LLVC9do/eMsikrkmx+PH1561Lp8tkjU9t2/I3G56bO5v
         A287yhZI1QkxX23QeVt0t6LUc27IvBZ0rorjCAO8k4re/MLrbkmpAusgvar7X0hLsU2e
         eOPMG0kNZQRR14qkoC6ThFGAMSh02/HK9W2kWWjjNn2uqtrdiCPFTwxzKnhakW+kjInb
         5zrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4FCE0/zFV346W/CBHEfI+aR7Ood/+4wZzpy1xQnUEtM=;
        b=QT2dICtytfTTnVM6bv31HrGv0LuIyIYlTZGSZYcgJotTmnsxJaJINVZccy2mviFFsW
         j/g+Edt0gvDbQ9I/o2aq0zDUs1p7U584xxGlYC0hT3rfMLD+z0Qbnxmu1C9zdIflwhs8
         y1CzjwKHgTADFPPKq/hfBdJJs0xsK7ReX4/54xEt7W21/ZRFudn5ZU0Ph5m0LH5Zha67
         X3eKCaTKL0lsv5AxCTwa6o6yETObsi93uQq4MQt+ylnxkVsdrimT4DOEGVfX7Onc2MR1
         l5R+ny4xlQccer9tVnPNALZN35hmzDLFmZqdFn4vVMJTmbctUKylzIaJC8iFVMXPqKMO
         Rv3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+dbQbOY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4FCE0/zFV346W/CBHEfI+aR7Ood/+4wZzpy1xQnUEtM=;
        b=R44sQLtTXJm1RtIshZ8HWy4Wu+8rlLmFP3UM+gnJ9B5YOWqK8v4oyqXNoGhXuF6Tgk
         9KDj+VVK9Pwq9WMNn9QkzzMe2OxwBjVU3S9BGvZc3Cdf+LZLCQziaAxdHZfQ2C9arj0P
         3wa8lhNyTUML7A3+RCTR0K3AdhYnvHa6CZFhSLKBjikWrgObwrETl25gY2plr5h42a5M
         74RYU9cyXEbv63fzNUvPMd1PyVjYfdh1NjmZuTUn6IsNIa3ET9KGV6KPURfO9exVahnY
         D03tuXGZQLFkzxfHVh1kVw/YvL4VlC3z0tdFBF/T1t0WA2JkRQdmFklhfkk081c5a0h0
         77HQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4FCE0/zFV346W/CBHEfI+aR7Ood/+4wZzpy1xQnUEtM=;
        b=tgxdEkpQMY1ZUD1bf2XgjWHuJRJRT64fbNkt9RhYB9YBd+Zydwr0j7WYO3W3xSMVGD
         Yjt8Syp3sdpVJmPNVZffJPpqPxVxL++xQxy2Ikizah1V2Nz9vDeOuZB2ynAOMz3fnSEN
         HiF8cq7nwBIjfrt+KXVuyRniEuMxWW+IBk+PGq6e0Ry2L8oxJm3d84PPtvhipIEY0WZ9
         9kprH8SQPhtYHeIk1CIIwABpPUBJIuhrKaxnzOoOpS7NSsw6qiRZnGY6a7VFJwVED6WZ
         gsw5LY8hes3lto2tRnJPXTd3WvSqlU97aZ7Na1uIdPc8orbdT0UfwjyqjkA2ZQSDqDj/
         /exw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4FCE0/zFV346W/CBHEfI+aR7Ood/+4wZzpy1xQnUEtM=;
        b=kSnn03PnbrMMyszn+12H+Xf+8kV81V3XQj51Dh4kcK8g6jhXXjUiAS7yFarov0IrOC
         7O3A5Ixs3r4RY2BViIG4I9wXbzflOd3ZmrUu/63WLFfsziSP9DUSg5WHkoWc7PykFZHn
         fvOrQ3kGLA61iCdJwNWkE6DwiphhkeYT0WFnH0lGq8L/ulqSDhXfg0hJovBaEj2R8Bik
         y30XtfXhq78RdgF4lMR48Ji92N0Isn5vEH9XsLHdgUyDOcGRx7E6x0txKHnzZP0aqD8y
         N4+LyIkmo665ydXkznLol1IIHwRCdADLQclqtX0Y6Tvip1m+Irz1Hli+SXuIYko7uZPp
         gB7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327s8S0i1zb8DpCzDF7JZcJy0jeZkkJY6F0tsLyADNKE65GmTcJ
	rpIHtNVBhMfHVJpUrW/ctlA=
X-Google-Smtp-Source: ABdhPJzMjusE9wWKSBvY+q2E7DY0rvUCAeqeiibXkCBc2ut/L42dgGvzccxIMHmeybfY5awAHYOtGg==
X-Received: by 2002:a37:a80a:: with SMTP id r10mr3230401qke.467.1610559925698;
        Wed, 13 Jan 2021 09:45:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5603:: with SMTP id k3ls1460851qkb.2.gmail; Wed, 13 Jan
 2021 09:45:25 -0800 (PST)
X-Received: by 2002:a05:620a:2104:: with SMTP id l4mr3028933qkl.35.1610559925289;
        Wed, 13 Jan 2021 09:45:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610559925; cv=none;
        d=google.com; s=arc-20160816;
        b=1EaTyUYdh/sHVB2Jcl2VsuX81fn7HDQWfool88jv6xHI/eQ+lEB1p7iAzivPor/zKF
         sfi+FXyJBT5cWU6+wtyudyY0Sf9xkDmFC9bmGF36iOok0yh0OlDtbUOIJxhW+wdPs3qE
         gIz+Yd/CmNmlDaIj6y33n/VEd6fi3vDPRnEHRVet1zs/43sRGLdxlW+lud+HNeYfxrJU
         VFg/8sUUzUEzBVirNdy2yUE4IoVpyFjBzc+BnbEgwrLyojlDCOkmvCr36hVcI4v31RkM
         Gp/WcQCzVTEvPqeSohImc2bod+047TPLhHTNaMZxmqJUZSo5HquKW+bODfw8s5E/2CwK
         p6nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rZIjRV+wcrnl1O2rncbSo+DorGJ/Y7Tpm+a8mdCtRfQ=;
        b=0nviLvknie2m6qWJSxp73FriWnxyov1vtjA9oAQWZzQvkhj+xunI74cBuR2+2+gJJ6
         FnoSTxdYO/7CQxwj/gM+mwFAWZ5fSzxJiz7GSw84KMMFQ3EoUhizXAV2pXQeOHxhOmkG
         kNZ9SOvin1YZ3nzpuhOZO/DvaSuQgTobh04i8jAn+I8qOsKzYM2X89kJKBLBnlfAAnSv
         kEsfLcu9PxmgMnKcBkteTgPgNDgKk9MmK33k8ObTtntabJzt0K2n+A69g44kZqb/Oubt
         9rhKNUFglKrJG2kF4klP9TKCfD7tLrKfkFe8iXumByxtVkPrTItL96vhl7TbBQryObpK
         XwtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+dbQbOY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id i2si160745qkg.4.2021.01.13.09.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:45:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id x126so1666840pfc.7
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:45:25 -0800 (PST)
X-Received: by 2002:a63:4559:: with SMTP id u25mr3080213pgk.306.1610559924418;
        Wed, 13 Jan 2021 09:45:24 -0800 (PST)
Received: from Ryzen-9-3900X.localdomain (ip68-104-204-241.ph.ph.cox.net. [68.104.204.241])
        by smtp.gmail.com with ESMTPSA id 8sm3327671pgx.48.2021.01.13.09.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 09:45:23 -0800 (PST)
Date: Wed, 13 Jan 2021 10:45:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Jaegeuk Kim <jaegeuk@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: Re: [linux-stable-rc:linux-5.10.y 927/1006]
 drivers/scsi/ufs/ufshcd.c:7654:3: warning: variable 'sdp' is used
 uninitialized whenever 'if' condition is false
Message-ID: <20210113174521.GA1898@Ryzen-9-3900X.localdomain>
References: <202101131831.miQ9sl5g-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101131831.miQ9sl5g-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g+dbQbOY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 13, 2021 at 06:02:41PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
> head:   659361086d8b2ee2c8318f390029a350a6e7fb61
> commit: e5383432d92c76054470bdc562fb26f237befc13 [927/1006] scsi: ufs: Clear UAC for FFU and RPMB LUNs
> config: x86_64-randconfig-a015-20210113 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 68ff52ffead2ba25cca442778ab19286000daad7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=e5383432d92c76054470bdc562fb26f237befc13
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-5.10.y
>         git checkout e5383432d92c76054470bdc562fb26f237befc13
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/scsi/ufs/ufshcd.c:7654:3: warning: variable 'sdp' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>                    BUG_ON(1);
>                    ^~~~~~~~~

Fixed by Arnd in mainline: 4c60244dc372 ("scsi: ufs: Fix -Wsometimes-uninitialized warning")

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113174521.GA1898%40Ryzen-9-3900X.localdomain.
