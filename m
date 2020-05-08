Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBRE4272QKGQECBBGC7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3AC1CB9C0
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 23:25:25 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id u19sf1256317eja.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 14:25:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588973124; cv=pass;
        d=google.com; s=arc-20160816;
        b=iBXkxlVEEk/tlS9F7w0SzpPMrLik2rrHxPVWCOiT3WYjNysNiSlBNMZTtXlFgLxE4N
         LNdup5k6/1qvCZ9k+iCGlwudS7C9UW8pdeFbTYm9inYK4VHq6byFOE4vzfzVLf640G7Q
         fDLRUDJHkUJRzJDKQKGLuZGVr4pw2sRORBwBlZd/dpmn4NIBtDgLMlpNqoguUxU9fHR5
         5bkNqiXCExH6DHDZzPqleXRmfbewiKST789b8X3fXSFq1yFX1ns2p69yAfjXZGWObqMe
         whbHD/Qvm3HSHWhEINmzgT8IZbRyQI3U7yoyGSYGvXimlVAxbiuCGFIQt38b+3Amai75
         5eww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=G1OaLiKLP9+6JEXExR7V7brMI3LaXYMKRZk+zcviosY=;
        b=eVY+Cxgagi7PApPQgbcr6jbaKIyL7X4Otk+K8DTcsAq9dv3ue5qNVks27WVKsV0mI5
         uIpprYFqDJrFhfXuiwYkpaUeJ/l2H38lwr1imqK/vLh5y8eBnzHoplVjlXBytRknBgpA
         V0paxu/irjl/mgKmQ3PxpGkTTJU4m/HtA+yNhj4WGyNvb9B3OESx9QERnBjAU6yvMRh7
         cnTMPvm5sTsJsxuNUlSa5l9itVii9FZh1ODOngaXEWpCnxYbvijWuCI6TmJ3bpffROfv
         cRzHrUrMhKrbS99X9pxn+p3TNW+XoljGqg+BhdzLdeeYaU+xbeeVVs8ua7QT9v94UPoQ
         k+8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G1OaLiKLP9+6JEXExR7V7brMI3LaXYMKRZk+zcviosY=;
        b=SyzTgWHIFNXji2YbA+UWohzgtIjLA3CGBqWYy9Z7DJSnael64t6A9ZSdx73fZVCBsc
         CKJZCkS+UWQjo1ciqZtXa278uGuLh/eBA6YnH0zDJB7B31qaBtSfHvIcPSAXytY+LIjD
         VaaI5ZZ/qNCvYtb54gjH9qTELQFC2CMX/gZx0WFO3C5GkHll105a198Bge+wCfldI6Jc
         BW264udsw6bU5BM1dP1yRWKf9uCSEGcgp3cdILMNpmR5/hQIszEZzgqhmR1B4DhAG3VP
         CTdVghXnI9dExBmnfUwgyFbrf3GYGZIxX+zmQyDa8S15JgCt7D0qZ+Ql9niY5XFA/lZn
         Zyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G1OaLiKLP9+6JEXExR7V7brMI3LaXYMKRZk+zcviosY=;
        b=rBgKNja/03CVUS5DIaD6I5yFhaGX3tBuBYQCFvCGrG+zm8tvSYBtNDGc9ch96JG0OF
         Fs4Oq9fqdJNhJfUIl6ivV5TLpdRV6D+a9HdvBC1nPI3bXus0GUc/vkeWg+402fVsDd4X
         1YHU21rYxHZxpISnT6M53d1JfJAqbgFKvRIJ4hUnYe9T2TPjnwUwyB5RnjxZUDQ7L6iN
         rz9NhplO5yFAETbPJhHxv/QAlP95NXTWeVXIIRXwHg6S4Ix1Qyg8FtWU3/Xu28i/+tMK
         EMYJimJNwc50QscH5qR8Gt63/ndIoWK+JhomkN1w244IXUlNBLW9fONUWoVecvSIUZws
         iXKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ5TjTkHMGYb+822pHG3gazuxyuSq/bqN9iedBuRlSZq0Jy4Kff
	pBOjvPwMO3ZF6zy5PbVszX8=
X-Google-Smtp-Source: APiQypL+tf0/XeTEFqt3kl88+UbBVylLRCuApaxjPI9vCPtu7dt1jUNVfSQ6jyvPKJqddroYn34DMw==
X-Received: by 2002:a05:6402:698:: with SMTP id f24mr3871625edy.260.1588973124720;
        Fri, 08 May 2020 14:25:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:ca0c:: with SMTP id y12ls1226776eds.7.gmail; Fri, 08 May
 2020 14:25:24 -0700 (PDT)
X-Received: by 2002:a05:6402:2214:: with SMTP id cq20mr4118460edb.320.1588973124189;
        Fri, 08 May 2020 14:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588973124; cv=none;
        d=google.com; s=arc-20160816;
        b=GQMaU78bD9rRPVNxbnOdpOLec8GX7NsmCFjTQjTepWukxtb+N3TD+YEu5P1/CWbBAh
         ZdyBDV+iSzgPnpXPk+fa2vBefHaTh+i5INEXdBu2pHC2Rj0ZaCLbsgx9+tCYH4FJDzuR
         ++o+lqYmbkj//BrKk7B0MrqwAtoST+I2bPg7/3p5B5BXQ+vwCi4d4tV9q32Fl3jvkqMv
         mifzmdrM7esRU5wClM+9flZEqPNm9tmqukGf2Ae3WIVhUZsNS0mTFF9i9mr6RAX+7/pH
         vP6HpNs+2KWEeSFBdGsYkVYAaD6Naqb7GPJU/rG5tDhaJCR8l0wKd1CBuE60V3yLbvLV
         UPFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=kXlvgPBjayKh/9VS7IKeTVknrZlYzXmerP+PVr9TLY0=;
        b=NufRzbYPDywBMsP5wmnzuCDkrz44mmk13c7LwGmBCMbXhtIP41rBVKDUHiPLBwADgF
         5QV0Wlgjkg4osav9iKBltZ5OodE4pCRevjlsZQCjdvOrWu7efdhxA59TH5U9jiZPuYU4
         5wPXoFXvDL2KanesgHDSLVDmBiViLQ0qV4k5M23Mqj8PGCSCwDgazXf26VouEZs4IXwD
         WLigXKm1YgD74DTXsSrLibcgqidlrN0sRyIYkHXnK2YBr5LVNuD5PnpY7xGIQ0fmEzCs
         RU3hPVGcE0FZtcjNvxN/EpWRv2RxtOB7yowWP9VCMNlWP85cek/5i0yObiiCVdsvlrbo
         gRdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id a3si191677edn.1.2020.05.08.14.25.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 May 2020 14:25:24 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-lf1-f44.google.com ([209.85.167.44]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MxUfn-1jCtlC2m0f-00xpqq for <clang-built-linux@googlegroups.com>; Fri, 08
 May 2020 23:25:23 +0200
Received: by mail-lf1-f44.google.com with SMTP id s9so2566618lfp.1
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 14:25:23 -0700 (PDT)
X-Received: by 2002:ac2:5df9:: with SMTP id z25mr3212534lfq.125.1588973123154;
 Fri, 08 May 2020 14:25:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200507042835.9135-3-bvanassche@acm.org> <202005080353.y49Uwj18%lkp@intel.com>
 <CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq+HzfAw@mail.gmail.com> <86bcf088-a35d-0a0f-0ba4-5883b1f2d6cb@acm.org>
In-Reply-To: <86bcf088-a35d-0a0f-0ba4-5883b1f2d6cb@acm.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 8 May 2020 23:25:06 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3PA25WUJp73Yea9xq_ca3uXA9Vz2U=UmHiDhg8FmGiNw@mail.gmail.com>
Message-ID: <CAK8P3a3PA25WUJp73Yea9xq_ca3uXA9Vz2U=UmHiDhg8FmGiNw@mail.gmail.com>
Subject: Re: [PATCH v5 02/11] qla2xxx: Suppress two recently introduced
 compiler warnings
To: Bart Van Assche <bvanassche@acm.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kbuild test robot <lkp@intel.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, 
	"James E . J . Bottomley" <jejb@linux.vnet.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-scsi <linux-scsi@vger.kernel.org>, Daniel Wagner <dwagner@suse.de>, 
	Himanshu Madhani <himanshu.madhani@oracle.com>, Hannes Reinecke <hare@suse.de>, 
	Rajan Shanmugavelu <rajan.shanmugavelu@oracle.com>, Joe Jin <joe.jin@oracle.com>, 
	Nilesh Javali <njavali@marvell.com>, Quinn Tran <qutran@marvell.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:04tU3LjZRNB42AiyRGbuyReL+wi3c48iANgmiiG5u5kazxr9LfX
 xq9sgMg0kf8nzqJO0STfingy7nt4qGxz8D/0rdNUPFeEMdj+3CCpS5/7f53miXgoxtJAo4t
 /KbJtgnsvVu3iouzEy1la5LQQM0nSKHI4wDgRJuvUur3Hi8UznS/Sx+gi6OZBP5cZL07SFp
 wTGamDXZJ3HRYVx+Mi+3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XiALlo2dtQE=:N8mvHVGOQjJAr7l4SPJoty
 luSLpIG+sq/TDpaDAgNMraM3VsuHmIQ2UcVoC+AxxKbm7JV5pU+5u5UiwgUbCr5B0v2hIZKUE
 p1+5CDmAjbnzRU6CG+o3vM6fs375zxECw4+1QDb6VgHLGe7sD7i29GKlMVnb+l+bBnTXQdBn1
 HtKLOXLoG2gVIZyrdfgckrlApDvMfUaUEZukz/yuz5kpYDlGct7sNUOl1++Lr9MyLyYaR8F8m
 5G0evt+f1XXcevoAat+77fa22P9yaRCNRwl3BrcNcN/X64a87g5sCSy57iuerU2Sb5QVuARDM
 RX8gA3K9rK1xWkO0rxVUnnXwa7ovWbv9wnHmNzt3ZZVijZJy1zHm3fmvbwHMG3bRAlImLLQ1U
 JrKLUc39itB5/S1aoynyhmsJRfGnZRZ0bk2hb2NAoaRamu0RpiglbdQ1p7J/+EN7ALh1uc5/e
 HLGq0aYoH4xaqXwwwXYFghQiIhd04EJJgqYOcEmzu49e6ygTZPgzg1ZGBjCBbd7sgF++HODso
 DEELte0GsMLn4LsPNYsdkJMSLin+Ut7wSkvVbHXCLm3dHA4+HmP0rz7DRIgm7mYQYtKUgeaJU
 88n1IROgMTKGxibNAqpjO+LrA4eEdkjn48SsBg4fBjSBH1rbZYYKI0FTljuZ3Ue8c26XNi1PN
 k2zJM8lvJP1rNxGs7AgDTS9Fd1Erl5QNHYZGvI4yXsRruFPX0spwCZF1UE4KHF02r+I17VlQJ
 3UnxsMRuftU2Vj5V6z1V/mAnKpYbW4IFmM/cb3pZsRdgouA1fFPJUxiVk8/E0m/EYTo0Sotle
 xhIjLRN6vutCb6frayxwZfcxBMxqNsRvG3CJ2g7wHRs3RPCXO8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, May 8, 2020 at 1:16 AM Bart Van Assche <bvanassche@acm.org> wrote:
>
> On 2020-05-07 15:00, Nick Desaulniers wrote:
> > On Thu, May 7, 2020 at 12:18 PM kbuild test robot <lkp@intel.com> wrote:
> >> All errors (new ones prefixed by >>):
> >>
> >>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
> >>>> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
> >>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
> >>                                   ^
> >
> > Hi Bart,
> > These compiler specific pragma's are not toolchain portable.  You'll
> > need to wrap them in:
> > #ifndef __clang__
> > preprocessor macros, or I think we have a pragma helper in tree that
> > helps with compiler specific pragmas.  IIRC it uses _Pragma to define
> > pragmas in macros.
> Hi Nick,
>
> Thanks for the feedback. I will have a look at _Pragma() and see what
> the best way is to suppress this warning.

The __diag_ignore() macro in linux/compiler.h should work for this.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3PA25WUJp73Yea9xq_ca3uXA9Vz2U%3DUmHiDhg8FmGiNw%40mail.gmail.com.
