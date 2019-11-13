Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCGDWHXAKGQEXY46MLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id B5592FB950
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 21:03:21 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id q1sf2144233pll.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 12:03:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573675400; cv=pass;
        d=google.com; s=arc-20160816;
        b=KgUTqnQcbIGETHeobvOxUx3Peh0NHu9QQ0fmOJxpVDu2QH6Jrv8QWD/j/UZCrIMX2A
         ZkZdIPobxNyiqaPsqWmFF6h2M7/Darap8IbcuzmtCqo4G2zFPVcNYZSi7aj8xpieSlOr
         3hzUnE6KJBNUkmOCLjnncqG/+4ua2pgMVRmdnbiEwj4t0W4YWTZgM2CZTMzRsRJM1uJv
         FNsqiaK7L5kA7+DrXYt7zjqNNDHzBw5o2waVJeNw868bahAPgt3kGi8K0+ZKdMh3U4kZ
         JnekFb5oo8pClu4+SqigdS94zGTnpB3MmDcUJ8zZGm0Fjy7ktzTyEfDdqDVyGzEJsPsT
         pl0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=/owHmvQILE/8y6tL1JK9WgnycQI73dLXgvpNR1gbGZU=;
        b=Iqh1VAUQCzKS15+Cu5LXFtgQUN/3wBrOjpJpIbgaOO9vb8zAeWUDVbflPewgDl/KsM
         w00F/zFquNRCOEUiq6AYvyoZ1Oo2tSfZx40Y+1WXfGxmhVvmJ3575ttHoKqNcJOc+yLs
         iSDhDje+H2LDjre/NT1Nzs4EEoMi/G81TvcGtQFBNAoKsjBPgMgC4wIJN8sXgqajuCNL
         gejhpCQJzQoizOvU9bIPhBxw6izixa9sWKLW5J/LfrGF++7WrFe0BuzITntfNLq/KsZM
         aSn1iKzDZb5SQfMXLA01LBamSZbGbwEdLgLVVmHXMv1u1ArRvpjpud6kF0i+xhp4WbaT
         dJvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yqrn1TJl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/owHmvQILE/8y6tL1JK9WgnycQI73dLXgvpNR1gbGZU=;
        b=pJ8Xb5ccnJDZzwySeC1x/4elnLHU1+Ue0wem2q6UlydNvV3kss+QCW1InUQjjv9aV4
         C0+nRnzqHdYObux87XUdC6gmhp3tpBE/lkpMphVPazpehoPjE2/dS/ERAEMp5vbKMb6m
         I6uusMzq2h3dywtAquW9TW4UAhLUel1HkCKJOe1ht2OXoqETX9/FpRLEtqx5+9udr8ui
         e09/O0shiq0THcaXlB5dsb2/MGI2L1x+lGVesZedaSEj7uGMrdhCTkpQ4j8M041jmDHx
         O1ZHdus6vTk0TApJU9w2aXXAO06pSXdeOpfKXrjUVwK94OL5DK56ly3bk8UU1tWdwu1P
         Idpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/owHmvQILE/8y6tL1JK9WgnycQI73dLXgvpNR1gbGZU=;
        b=i4aPVAe74WE6EKTBdQzftQonIZp6J7ekErmqAd9a0OBIo5DVsiA8u0WJLlhaZGOlij
         nAkL1lsmYlJiIt6MbkgfIe2a5MbjRPsdZyWhzHWHycbQrTYhpkqo37FyL72bPW+NMdUT
         07OKqD2KE/X5xWEBZnJ5du2khmB8pHxVpMrUXv7XNUDxiW6ie9bSX7RLnyjVWJO+my01
         ewZZsIDGosvefUrePxFQtrTusw0McZYqnhpsoUc+IIxTPQG6HimrOcu/T30WUq7xOVQa
         jRKglqZC5efC7+4uLyn73DvXmF2BB1kn2aON8mIdQkPz9dwkX/uD+mFZvGRneeJ5u2TN
         Nb/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/owHmvQILE/8y6tL1JK9WgnycQI73dLXgvpNR1gbGZU=;
        b=MU6MOWNF86/8LPkLCnqCFYf+CiyGu0ypRylGKolARipRWt6vz9m3Zuyi6JW6WlyWDJ
         +0tyRoWs7YcMsOkEkDD96BMjLmQerYQOA9y8Up/teqEw+M6QYO/pX6AIHW6DEmNhaN26
         klpBONdI9j2Ba7pxlapeftwgGpCmhS6miP5QWW/ZVi+VhE+Og3OQho8O9ghvYdltmR+x
         0WPHJS37LWdBoXk3J04sYBL1v043QE5zWpH4Vy/x6PVf4pGqPLRpxC/suLwTIWEc5uQA
         mvKLaNSradwS9MR/6elJ8YcIewCruRXtwHyZK+V548mZrLgRoxeBkJI1fzi07KtTmoN1
         983g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUaMrELuV/PdFSIFwIRMsQb8/375+QPltJIH14TnTUnEve9B5DX
	Za+KXKGGYIq5gjYhYV141So=
X-Google-Smtp-Source: APXvYqxCuBEzz29OsgpgtAouYXiSz/9uQnv75kZV6nG9JHeQhAVRbSZnFGf2M9ZvFHfX6ddkaderRg==
X-Received: by 2002:a17:902:6508:: with SMTP id b8mr5496592plk.69.1573675400230;
        Wed, 13 Nov 2019 12:03:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb90:: with SMTP id m16ls884621pls.13.gmail; Wed, 13
 Nov 2019 12:03:19 -0800 (PST)
X-Received: by 2002:a17:90a:a416:: with SMTP id y22mr7443996pjp.91.1573675399850;
        Wed, 13 Nov 2019 12:03:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573675399; cv=none;
        d=google.com; s=arc-20160816;
        b=kHSM8k2dQo9UX85jeIou+o0hl+zyz95k/1ZRlA22gkE5LlxHOqnxdqBoJgLOE7ydjk
         7I0fcDpJn5kuJs0A8byuERwyLPDEdhw/gQLoN21Qj8XEjxPHQ0ZcLR4kGarju0CngNdJ
         vO9JrxwkPpaXN81RTTwBqXvVtFhGtQgEwstT4EETIn9IZm6pG6xPerit1bGCFDW6B1KH
         9scxx/RHbKM+xLKPmltdVcIuVVOWS2/Kcwhv5XbOCczeB9K/SUWfTmZG41rRjBLazddx
         ENCPkSX8Yfj2MjoGmOeqXQUOETkT8G/QN9xQ9qicKURL8mAHtYgCCqLyDgZF9GTlztzp
         QTCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=AzqtRi/nuGu3/f4eeGlkhPpfmBFuKkq2XvsbDDr9j4E=;
        b=Z4Zr6MXjFsvs8qUuZFq4V+IaJv1aLcj5dy4v4qKol9VfHrWOoJmoU0KS8fQ8zPxucQ
         XdZwKWcQMZ4ApDd4Z981NTZwVpILTyJN/47CrsE2zHEFb5U9AwnDw38VcS3iqHaILmsn
         HqCA8njzypRBpo7MOJT0TH4FhV27Chw1YMYx84o7NeBV3MFdKbp0p8bQBraLdGqh5oCA
         9kaKe5f9WR7DpntUGjdOTUN45cv+SmIWShHRb436eEtFLHTabDeX/GLPSjl960sC6c45
         ROyG/6lJ2ADw6ic8O85HIaQ3iKSFTvkm7fZbRnMC4y/jKve6elqKOZzC1L+g7+xJGUqW
         uidw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yqrn1TJl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b15si185717pgw.5.2019.11.13.12.03.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 12:03:19 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 94so2743127oty.8
        for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 12:03:19 -0800 (PST)
X-Received: by 2002:a9d:4b85:: with SMTP id k5mr1447otf.42.1573675399048;
        Wed, 13 Nov 2019 12:03:19 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w10sm1031055oif.9.2019.11.13.12.03.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Nov 2019 12:03:18 -0800 (PST)
Date: Wed, 13 Nov 2019 13:03:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/vmwgfx: Use dma-coherent memory for high-bandwidth
 port messaging
Message-ID: <20191113200317.GA28079@ubuntu-m2-xlarge-x86>
References: <201911140314.HqlxPqbG%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <201911140314.HqlxPqbG%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Yqrn1TJl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 14, 2019 at 03:36:44AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191113095144.2981-1-thomas_os@shipmail.org>
> References: <20191113095144.2981-1-thomas_os@shipmail.org>
> TO: "Thomas Hellstr=C3=B6m (VMware)" <thomas_os@shipmail.org>
> CC: dri-devel@lists.freedesktop.org, Thomas Hellstrom <thellstrom@vmware.=
com>, Brian Paul <brianp@vmware.com>, Thomas Hellstrom <thellstrom@vmware.c=
om>, Brian Paul <brianp@vmware.com>
> CC: Thomas Hellstrom <thellstrom@vmware.com>, Brian Paul <brianp@vmware.c=
om>
>=20
> Hi "Thomas,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.4-rc7 next-20191113]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Thomas-Hellstr-m-VMware/=
drm-vmwgfx-Use-dma-coherent-memory-for-high-bandwidth-port-messaging/201911=
14-020818
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t 0e3f1ad80fc8cb0c517fd9a9afb22752b741fa76
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 335ac2eb662c=
e5f1888e2a50310b01fba2d40d68)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:441:6: warning: variable 'reply_ha=
ndle' is used uninitialized whenever '||' condition is true [-Wsometimes-un=
initialized]
>            if (vmw_send_msg(&channel, msg) ||
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:467:47: note: uninitialized use oc=
curs here
>            dma_free_coherent(dev, reply_len + 1, reply, reply_handle);
>                                                         ^~~~~~~~~~~~
>    drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:441:6: note: remove the '||' if it=
s condition is always false
>            if (vmw_send_msg(&channel, msg) ||
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:421:37: note: initialize the varia=
ble 'reply_handle' to silence this warning
>            dma_addr_t req_handle, reply_handle;
>                                               ^
>                                                =3D 0
>    1 warning generated.

Reported to the mailing list.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191113200317.GA28079%40ubuntu-m2-xlarge-x86.
