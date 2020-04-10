Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN54YP2AKGQEBEQYYXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA8B1A4B75
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 22:59:37 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id x89sf2369479otb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 13:59:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586552376; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cz49omfJjggn6DdSclSdldZOqVsBmE2KGzGJhdtQipYUD4HjyCpa6Gahxz1Nbzew7/
         UJ2Zl55R5ajZd04/4QXHcWeSHjTVP+iyozR6OB9nSzlrVk+KNZ7YAn087lzaF6bwMPP+
         pbb6ipLT4Oub4yx8FYvwlqr4ZDXieVs3Y+yZZR6rb7abdSVzRVHNjge6LZaUfmQAR74B
         GKt4WM4E4fl/b9TjNOnf3tUnYNDKUCo9NnVNQpRr6XCfAUxpII5UJFl6jIVz/ytt4dPF
         rkIPl25Od9X4pdkTAHx42XfmGKMkJ/woJZhuT3hU4mX+rWC2yKMSASchgmapuUu61f8E
         +qiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=umuhEvz/gFD+i+rxFJAMNgbsOKdPijgyeMJfZ0CmhUk=;
        b=qh/NumEC9nMOYiM11iKMVXH3Vtc2iVvGyc30A4msgPAckw7rMzGyeZCbJKUVxVGEkJ
         ppnNKQRfZWbuo3sXDE4aiVUADpSuI6TizidMXQPgyms6fsYm24pIdw318NqSPUWh02Em
         Gef5SGbseKJBCUK1YxzREQldHvXltsLMJlFIE82Y0J/JuwiI2UfOa8MAXsw7HgNIFd9F
         a7QB04R9QYVKfzdUhPcJyWFw43u27dccA5r1aETFaIaGxR6xcFGAWNNVTsJhFhGOWO7N
         PV7SRutQ/R2w2m/7PyyaSIjUNHMtXYi+6UAIggtU/+hkz683vNilUX60lvpkm8ek2HF0
         k0ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ut1qaZ/3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=umuhEvz/gFD+i+rxFJAMNgbsOKdPijgyeMJfZ0CmhUk=;
        b=YNi3OKupPi8RtUBVyi3Qd1OK3JuRkW9bZM72fkzqWIsmlkRq5ZSu+j6YF6DQLd+pAo
         5XehJeIpia94usSyRNuzbadqhix8wejitC8Y2MMLTIvANZcqBQQV794FUIHco2yC8coP
         OS4yFzq27BiiltrIGLV1RCaQojcryyNLtnW3AT3QGVbRPBojV+XcBJeXTKWXgriCmCkF
         TXnUTzR2sqj6nuxbAU2GLQxQCAJZrYkxvBJay7CjOq/tsYkHuS2VBrgtpKYol3FQzXQM
         xOjarVUZhRfR2wm2SDWgKB0azIXOu3qoNUmtP0fiY5b0d2lkIgJ7t9e/Jk0ddMwvtKXG
         02lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umuhEvz/gFD+i+rxFJAMNgbsOKdPijgyeMJfZ0CmhUk=;
        b=Tj/TLUIekPnSfkaazq2xGAEEGkPr5j8VU6SS9YyIVXmHmqTIHeCShpkhwOXYRrY1eu
         hHI2jPudnrkIjnLntFnQJ+WgjA35nkSFUlL4nZamnrw5584k8jO3tUwdr/CgGea0/ej0
         DScErZoUJtaq3CRICebIJ7GGXdC1hljz15qvsLwJgaEhar2mlCddiObX+bdK/73/jWYY
         jS4SNiGJPldM3/id9MQZkFWxCWRwREJLwphjv+24KrwSyfJDUXsGu2vacUtHq8fvRgtz
         jgyG1dPDTETpLvu4/R+OpA8jsvc95siuYUrIkT2Hld1F1h9YmEay4iwrNiZhJfURopRi
         u6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umuhEvz/gFD+i+rxFJAMNgbsOKdPijgyeMJfZ0CmhUk=;
        b=pH1w5I6GM/JWdd1tVkb9WSs23YezWeEKM34hkACI4AUi+nfPqcozmHEewOKo5FvWAV
         d+6INKfB0eYFFm3ieKoVpfTVoh9Zyg2w9piO3Fu+R66dzGO7UiZRkzBtgwGATlgYjOj6
         hKjodG59AT0Ki7DgOcbJSd6PsH6yMkeW4DLrfMfEaBFO3wdR30ZF8xWyKV/Qel0+Xw/z
         fMExco6/eChLC+m48pEfu99cBTKpyA+uRobjIXAOhDyNBymWis74SPWnvnpc/RFuoSZX
         qZ5Bd9DsWgu2MY7dkmukmvZsT/6gyGVugd6D/ZvVML2MY/VDCV8nJNO/xC7/+L2Hw/xV
         Mohw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub46qqObPMjE9mQx7D3USflZ9x39BzHmg7xShymW74q+b7nMKMm
	XZBytkNFx5KbWV5PkcS6ZHo=
X-Google-Smtp-Source: APiQypLLXF7aIfHTWEjE8WfHGR4K7B9R7pmB4m7Yv/qCWhA63RXnRgoRN68l43V3xlcMrtyjiCvg4w==
X-Received: by 2002:a9d:6ac3:: with SMTP id m3mr5178481otq.175.1586552375865;
        Fri, 10 Apr 2020 13:59:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:817:: with SMTP id 23ls5895169oty.8.gmail; Fri, 10 Apr
 2020 13:59:35 -0700 (PDT)
X-Received: by 2002:a9d:7590:: with SMTP id s16mr5497580otk.250.1586552374949;
        Fri, 10 Apr 2020 13:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586552374; cv=none;
        d=google.com; s=arc-20160816;
        b=sDLOwntcxKRA4JcwW4GDHvkvYd56mDHEik3qOV4kNZhzvWJeQnzzVFwFbXRRhA9VXj
         O7ZC+l8MIP1JpwQ+PfOOXVZpODzFua3pZvb1D5vzj7aOgLAIBXH0ABt6McvTMRtsW9Yy
         AS+lIlJ00gpbRVTKm6WwtTBPhpZTXSzHbXGWIhjYVbe4YXTUpKJS3zVbQ0VmC170wAYW
         RQq0CzyB5ppp5lLR/HEpDdtmFRhEb7jey64uEQ8SCQbZuvAY73/rPLdcmxeZJnmqN7cq
         4ZLTGjXBh3S3vJAAh7XBvh2OwKsgndBoqxZWzWBKUGij1TLCQ2khhg9noC0OfTyCUClZ
         mrGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=CXatplF2gFGhsFXtR5R2cbW0avLQtJfes43JimQqH74=;
        b=AEkh0yP8s8beDVRYfkj34jzdrJaAEWABbtX3YRr3Fct0OO4/KLOtXDQmOKVEtUkwLP
         nhyZ/LLnakE6E1vICOEoGOiv2mGf6YM3g1Gr9bzA17B5YNg0iufcU9+liP+1AwnJVgor
         tIyRS88+SAfTBXohpeztFlDVMFJkejvpwHCL/a10PnOE3GdKH6QqAPMAe6V1NGEK9CfH
         ea8owXnI7OrKLy/lRhnJOA7dzlDcF4OU6do+OLHWn5h3B3fQAqawKo89S6rJHbS7dHx5
         /GAn9Ct+dC5NZHOoosxVqEDrJaWkA8Wrn1QDlrg1lIYb8ClvpozpJtEwf+vYOHKeMo5i
         CN5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ut1qaZ/3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e21si161096oob.1.2020.04.10.13.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 13:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id j20so2297656otl.9
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 13:59:34 -0700 (PDT)
X-Received: by 2002:a9d:6e02:: with SMTP id e2mr5461988otr.366.1586552374539;
        Fri, 10 Apr 2020 13:59:34 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id t23sm1554112ooq.20.2020.04.10.13.59.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 Apr 2020 13:59:34 -0700 (PDT)
Date: Fri, 10 Apr 2020 13:59:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Boot flakiness with QEMU 3.1.0 and Clang built kernels
Message-ID: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ut1qaZ/3";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Recently, our CI started running into several hangs when running the
spinlock torture tests during a boot with QEMU 3.1.0 on
powernv_defconfig and pseries_defconfig when compiled with Clang.

I initially bisected Linux and came down to commit 3282a3da25bd
("powerpc/64: Implement soft interrupt replay in C") [1], which seems to
make sense. However, I realized I could not reproduce this in my local
environment no matter how hard I tried, only in our Docker image. I then
realized my environment's QEMU version was 4.2.0; I compiled 3.1.0 and
was able to reproduce it then.

I bisected QEMU down to two commits: powernv_defconfig was fixed by [2]
and pseries_defconfig was fixed by [3].

I ran 100 boots with our boot-qemu.sh script [4] and QEMU 3.1.0 failed
approximately 80% of the time but 4.2.0 and 5.0.0-rc1 only failed 1% of
the time [5]. GCC 9.3.0 built kernels failed approximately 3% of time
[6].

Without access to real hardware, I cannot really say if there is a
problem here. We are going to upgrade to QEMU 4.2.0 to fix it. This is
more of an FYI so that there is some record of it outside of our issue
tracker and so people can be aware of it in case it comes up somewhere
else.

[1]: https://git.kernel.org/linus/3282a3da25bd63fdb7240bc35dbdefa4b1947005
[2]: https://git.qemu.org/?p=qemu.git;a=commit;h=f30c843ced5055fde71d28d10beb15af97fdfe39
[3]: https://git.qemu.org/?p=qemu.git;a=commit;h=34a6b015a98733a4b32881777dafd70156c5a322.
[4]: https://github.com/ClangBuiltLinux/boot-utils/blob/5f49a87e272fbe967a8d26cf405cec15b024702c/boot-qemu.sh
[5]: https://user-images.githubusercontent.com/11478138/78957618-b1842080-7a9a-11ea-8856-279c3dcc6c19.png
[6]: https://user-images.githubusercontent.com/11478138/78955535-62d38800-7a94-11ea-9e61-9e3d8c068ace.png

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200410205932.GA880%40ubuntu-s3-xlarge-x86.
