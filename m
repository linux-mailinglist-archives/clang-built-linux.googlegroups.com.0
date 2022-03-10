Return-Path: <clang-built-linux+bncBCT6537ZTEKRBDOGU6IQMGQEM542PVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 544804D45D6
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Mar 2022 12:37:51 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id x25-20020a6bd019000000b00644edd7db66sf3680186ioa.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Mar 2022 03:37:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646912270; cv=pass;
        d=google.com; s=arc-20160816;
        b=EbcRuOEz+NoFUcJ0OA+CqxL2saFTTC5H+glz9jWFPVDlrkwg9TYaemQBN2VmBR3hdq
         X5BHgW+ivHnH7PuOEwSPLE/NTf0kak4BA+jGFkda8rSOw4YQR9K9048RCQOMUyRIxu6C
         wn6LBgfc6XhWQWt08DlCn7A4xVvlPf7JcZELC8/ntKIddbQv28bIBBHsnIs/+OJhEAju
         RhzQnkei5/x7cB6jGvDc+SbgBsKXgbRBopFXaFBdTpDr8VUTQy/3UVaotBd9p1ZMLHF5
         s3NYA+aF0AqNmLHCqEFPlfuwrNGvFWexSzm7L2I/VHxg9on1A+Ve6HRxIHt40GE8LH7T
         /IHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:mime-version:sender:dkim-signature;
        bh=hNn+cJAoMGuD5EyjMrLJGN5qvCs+ZxaSVbgp5EJLaRI=;
        b=lDvd8nTW2QZcEBIDpbZgKcWW7MhznLPP1CV01D48BruWPlq1jrfRWJRS1PNdVWBmnz
         KSfw48q/dzN4QmdWuHohx+8biSxQxSExvr5TgN3Q2n1lGqpnKV40fdgUL1XXoeu6CQfV
         Ck4vFQ5wPngFK0VmtL7faN7y4JY8xdIdK51pVn+leRuXyyHyNGpDYabg5j2G8NAy9Y16
         Ai+tzDAzwQoyJlIR1fTYo8KE6fzGmf8mmIl5SA40avN959c4llJRICHjSUSLArWWO8LP
         9W6a/3TA6Cr6hP6sQAoopxe8zAm6h/N1xKJdCwnaUAkFf1M//J70gegmFvdZTlarIioq
         CE6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="ba8/6TOQ";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hNn+cJAoMGuD5EyjMrLJGN5qvCs+ZxaSVbgp5EJLaRI=;
        b=VNvKxuv+TszGinHuxAtTX+tXzoyBlzjlxgPUbqm9exfmua5Qh36paXsBi+WHz8/0Ef
         6IXqA0/9c0C0Lw3ceU8L/jAkwMXvQIsu4te9YTy5ZWo+Yc5sMx1mWt092okgGU39xitE
         1zrHgnktlfCqGZNPo9iTAmalw5k5dlsnCIlWh73hvimDVenuPIY8RlgV7X134sJysGD7
         mNCefxFVtNzv+nOBVTWtBma+jyC5U8pyLHnMCvLA2biGl86VEaKvO6ne+VTFF9tpiP8z
         ftTFfXL7FRgamwm26mI0rkd8YhLWcKqAMQgBI+lgZZ4bgvQyRH3dZIjJXVDAvCh1rdDX
         3uPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hNn+cJAoMGuD5EyjMrLJGN5qvCs+ZxaSVbgp5EJLaRI=;
        b=1RCGFmIiAhPRkeEV7DFkpDrAZUkYWST8zA7Vebzy9jEpFsjgYSHUdhb+JeIkoQkFUS
         jAy4D7Xwaqv/qNAe3wqUj8ALTXYCOOFVq8SVg4pS9mG844pkWG0Q5ZOkpht2+CXm4mgR
         yBeJIUAbR6sOvWFoWErW74hltUYIQ3v2E2335i5JHu6StMWRfPZ7v6a8N6paOcxMwTZ7
         pr1dX6IPIFfPMHJ+VhTTtKL0vUDI2Ju42jJ02MgdHN8dA2NSkbkA7S+SUaQdN4TJ0SOf
         leij+KqzgZJbnmykBEALAwopcNmntQ4B8Unw+AChtPRRr6MBa6PZp//56RuZOM0Md7tX
         6ycg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328HfDbOgHts4LUgiyESZ0tDnh4xzE5CeSMXGG74FGUiFalNDrX
	jBcT4S54a8/NLmFtla/2Lmo=
X-Google-Smtp-Source: ABdhPJxmRY/ACMlWDQ62xcXsu2U12GiJwGBIFIs/mXuQfFSaIR/I91pJWFWDB+rSRJukHg0mlK011w==
X-Received: by 2002:a05:6e02:154c:b0:2c6:4ffa:57ec with SMTP id j12-20020a056e02154c00b002c64ffa57ecmr3256113ilu.55.1646912269727;
        Thu, 10 Mar 2022 03:37:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:418f:b0:319:adfe:f40a with SMTP id
 az15-20020a056638418f00b00319adfef40als483930jab.3.gmail; Thu, 10 Mar 2022
 03:37:49 -0800 (PST)
X-Received: by 2002:a05:6638:531:b0:317:af7d:d934 with SMTP id j17-20020a056638053100b00317af7dd934mr3523131jar.307.1646912269338;
        Thu, 10 Mar 2022 03:37:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646912269; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJJ5X7/8MANSkZ4mdxCMIqjKBP+m3fIWXpQECRcCmnq05QKPFVadIe0EX0ydsjmK6g
         P7+b2YT9myr728J6TqvW3dI7DF+MdE7m9craDtSAa4KwxhDttjBy4l10TArNjulNneFG
         mF+3iy+uQvp1WAnBdS0KidAfEKB+bXxEiGr9yUcSLQ2PtGKhmr8Egbd/NaX1SAWNeVG2
         auLxibUJLjjufPNumZIB1STqEKqEKBg3kaF3AVCzdYdYOdO6nvE/ojylft4mqglS63Ez
         B3KzIQdU8aIZBzUHQ/BTbDe9iRt9gierq93Kl+nB76cvDnR0O1iCvTF59mreLSjzH8VF
         FppQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=1ziSuPMzYNAw8eT+iBfN5WM2hFNCKf7IS7RFWaVxPlg=;
        b=mu1kXk+69dbmheOSbnIvfD7WwXrjqFv4849OguIPh3cDYn8dUaqSfdRaROOzMh2NJT
         vv/CSXtTubCaIbFsS8plGiYw3hoaDzajKiBohDxmsT9rTYl5ICxEyNB1MrZAbXi8Y5F3
         v5Sfq3hO86F7Cy+07SiKZlLf7VjqeZ0B6pf+fdCC21WyFbSXvgN2jLOHTSMA8ObYZdXh
         HtEU4w3Vu0/6MFKipkJNgR6uYiOsMWuKhcckp3gG3sv9/8w5c3VoF2Hgy8ZgSZAn1cjW
         62z0aF+Cs/q1OQ9rgidyk1U0FEeY0OSg68CCvvSTAMWEbRaexivsuDBHR88Pq5UlE4lC
         LJzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="ba8/6TOQ";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id i20-20020a6bee14000000b006145650b19csi329616ioh.3.2022.03.10.03.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 03:37:49 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id v130so10209890ybe.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Mar 2022 03:37:49 -0800 (PST)
X-Received: by 2002:a25:9909:0:b0:624:57e:d919 with SMTP id
 z9-20020a259909000000b00624057ed919mr3599420ybn.494.1646912267954; Thu, 10
 Mar 2022 03:37:47 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 10 Mar 2022 17:07:36 +0530
Message-ID: <CA+G9fYsz7+Ooc8L-Dpfjp6mMDdw43=SjqiE0ryABy3t6qEzRoQ@mail.gmail.com>
Subject: [next] ld.lld: error: ./arch/arm/kernel/vmlinux.lds:34: AT expected,
 but got NOCROSSREFS
To: clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="ba8/6TOQ";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Linux next-20220310 arm clang builds failed due to following errors/warning=
s.

metadata:
    git_describe: next-20220310
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
    git_sha: 71941773e143369a73c9c4a3b62fbb60736a1182
    git_short_log: 71941773e143 (\Add linux-next specific files for 2022031=
0\)
    target_arch: arm
    toolchain: clang-14
    Kconfig: https://builds.tuxbuild.com/26BmBgHzW9MFZ3R0kIwL0Ce2r09/config

make --silent --keep-going --jobs=3D8
O=3D/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=3D1 LLVM_IAS=3D1
ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabihf- 'HOSTCC=3Dsccache clang'
'CC=3Dsccache clang'
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
clang: warning: argument unused during compilation: '-march=3Darmv7-a'
[-Wunused-command-line-argument]
ld.lld: error: ./arch/arm/kernel/vmlinux.lds:34: AT expected, but got
NOCROSSREFS
>>>  __vectors_lma =3D .; OVERLAY 0xffff0000 : NOCROSSREFS AT(__vectors_lma=
) { .vectors { *(.vectors) } .vectors.bhb.loop8 { *(.vectors.bhb.loop8) } .=
vectors.bhb.bpiall { *(.vectors.bhb.bpiall) } } __vectors_start =3D LOADADD=
R(.vectors); __vectors_end =3D LOADADDR(.vectors) + SIZEOF(.vectors); __vec=
tors_bhb_loop8_start =3D LOADADDR(.vectors.bhb.loop8); __vectors_bhb_loop8_=
end =3D LOADADDR(.vectors.bhb.loop8) + SIZEOF(.vectors.bhb.loop8); __vector=
s_bhb_bpiall_start =3D LOADADDR(.vectors.bhb.bpiall); __vectors_bhb_bpiall_=
end =3D LOADADDR(.vectors.bhb.bpiall) + SIZEOF(.vectors.bhb.bpiall); . =3D =
__vectors_lma + SIZEOF(.vectors) + SIZEOF(.vectors.bhb.loop8) + SIZEOF(.vec=
tors.bhb.bpiall); __stubs_lma =3D .; .stubs ADDR(.vectors) + 0x1000 : AT(__=
stubs_lma) { *(.stubs) } __stubs_start =3D LOADADDR(.stubs); __stubs_end =
=3D LOADADDR(.stubs) + SIZEOF(.stubs); . =3D __stubs_lma + SIZEOF(.stubs); =
PROVIDE(vector_fiq_offset =3D vector_fiq - ADDR(.vectors));
>>>                                          ^
make[1]: *** [/builds/linux/Makefile:1225: vmlinux] Error 1

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

build link [1]

--
Linaro LKFT
https://lkft.linaro.org

[1] https://builds.tuxbuild.com/26BmBgHzW9MFZ3R0kIwL0Ce2r09/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BG9fYsz7%2BOoc8L-Dpfjp6mMDdw43%3DSjqiE0ryABy3t6qEzRoQ=
%40mail.gmail.com.
