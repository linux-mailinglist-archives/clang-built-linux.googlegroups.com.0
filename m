Return-Path: <clang-built-linux+bncBCQ2TPMHZMNRB74S5CCQMGQEVD5NMWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 349B139B792
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 13:07:45 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id b16-20020a67cb100000b029025a1d69d58asf1689842vsl.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 04:07:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622804864; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Mn3J+NpUY42XB5kxBL8phq/gNGGsTkiTSXdbZkjv+IlxZUIEXhSGgDCmctrF7cxB8
         aaQshB9Ryw7hvAZQmKKUeVomTKWuO7St+CoPd7p7gZtuk3mogM1HUdsByBVpGpliPaPF
         EwxDFCq9oa/6cAMaCyLatZwZbTA4L6bdZA9x5MWHsIpcSibck8pH+6gX6j9GsyjRsoLp
         PAEKS/c7zi27QviMYq636sTfxbzkckx5wepM1W0W9E0NyCeul/p4BhBgQWHRHwOWaL1W
         W+/BKb1gzyDR/xNjIRYEpSmweZsTjXHcKMQL+AbvGYpw1qduyEOw2C66RnhOm2A/0pGX
         LDaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=6Uqp0e+9MG1K7kNLZuWsLUDOo8torugTeVAL5zjoBqo=;
        b=FI9M713joO0svvRvYR0Y+1+bFxG1Kz5+HRNs6OXrEWIqU55x/VhxdrvDGNKfakknCi
         d6KycpVVrwDLU13Sbyk43fzLEKQP2OK4GbeNpGivDZ42QTzDhGRzFC7yL2CoxXJywtuF
         py2LNL5/hEQvBKMCK2eYr0+QJ35yBWRapqPMNg9dZLpfTFrKzYX13rufDJHPJGQEfAbr
         8GxjVO5da3LQ2IVsGkI1wg1a5T+cv0CdlkHBY9cPXqrTbS1/zBauvbRMcc4s2CwbhfrR
         2Zb/JuKJLHTGwoYf8PGSPhYIewSHBdPy3AgKIeR0X3vObetyXDm43GIRog1epffunbx+
         iVLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjlHEdeu;
       spf=pass (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=akshith.573@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Uqp0e+9MG1K7kNLZuWsLUDOo8torugTeVAL5zjoBqo=;
        b=Mds8ZIwxjp7o8dF85LN5+LWXJlhdhVY68x0t+bouR8uA1x2jbPng9H6I2yILgZfNq/
         +P/8xNG7rgz1vv6lyuytxv4ip/QYlDy4ynf6uLSqJ8/NGamjXqMMOU2VBMcVf8j+/Mow
         jgyuh2rNEFa+QUryDCda0N6vVrsCRWwUYZBldU/EuzYGk7kwjkHEYBDE6fpEQ/zUyJ5e
         HyZfSUMtIKIVBX57YATd4CDVB4Jek4AR5FeHlvG0u/tYDRZ+sP/+DuB8pxtp7t2LhYaZ
         Al5dP+68yWg+uLBzG+++HcjAae+H03oaxnflDgIezjcaqef/CRHgH7ku2EHDYe+yuT3h
         a7Yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Uqp0e+9MG1K7kNLZuWsLUDOo8torugTeVAL5zjoBqo=;
        b=jaTYLQUqXolEPxJSRMPZG38Rq80MOb9ITVfUd8LB4Nk1U03ev3IktLO5LBqkirIFlZ
         gDsMauggkfhtmFS7U0GMj4m3bU0XQodbRbfnie5Bthg8snQnmepfDsLycqGorJ/4R+/h
         wpDlokMkQLARwpa+21c9XelVCNpZANSSOL/OVIR314iLiPZAPyb3/V/ZguDErp9CXoGL
         jz/ecWhZzueoN8Z4amByfIRMyBljPSrmAA01fOJJFd6c4SFYt1gfumiV0h+d5i1Wz3FH
         /QcPOjyUbH3/Fs5AQyoCeguIr2zDVZvsSDAVbePupNl2IADVMqhvJm6Ci4M3Sj79c/Ni
         8Zhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Uqp0e+9MG1K7kNLZuWsLUDOo8torugTeVAL5zjoBqo=;
        b=OESt6DrBaITRPpIejbqvftJJvv85ObDc3yhHR8A9ZLEGynbd+oBXSfyOltrKnioSCu
         PHn2ERHudVX4x2ONsr+FnG+3EfhikPvv1dVhPrBx3RPXKFVOwsMrT47Botbs/UDccv3J
         sClAdPm7Ksa+7SFxLw14t0oEF3NvZIvsLAeuA6bOe9dwubwI5LqXd7+nSksPTqcMYeLk
         vPLVbYyq4vvYUS1Ck4+qsS8jJY1r1X3gWuc3MGetA/yx/dXTlzdnTSXPKyJYKSUC6PJ5
         a6GDvB5YnvVY1vmzyE821NI6s2HLQ0xhDz6j2xXLnDFSf8X8fWRUGHf0cLGmtZPKvpcO
         yeEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vbr1mjm3IqciUOgTHeStDg5itrKoT7rDTvHGTVCS9XjW92e2s
	haJx0gzlpm/vAr1YDFSlZKg=
X-Google-Smtp-Source: ABdhPJzuX41JliFI1ThLTAWG0VpKnwrZojjJOayUpuQj3OITtUFqr0rlzw2EhnET8REL4wbqO0tqbw==
X-Received: by 2002:ab0:36db:: with SMTP id v27mr2626957uau.107.1622804863963;
        Fri, 04 Jun 2021 04:07:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b243:: with SMTP id b64ls576938vkf.0.gmail; Fri, 04 Jun
 2021 04:07:43 -0700 (PDT)
X-Received: by 2002:a1f:5f85:: with SMTP id t127mr1568267vkb.17.1622804863502;
        Fri, 04 Jun 2021 04:07:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622804863; cv=none;
        d=google.com; s=arc-20160816;
        b=0WYhbUPcWAnaT+IRXKPDPyiR0C/pCQ/F8fJmzdCaqWBW1l3t175TrJPfbdVQYeWAlr
         OS6DBuDHD/q4dfUiuoZM3YgcmdPzv8Jj79UFnfHSiIYipU6BmNN/74vUeWcV/JPY+92i
         s6gm1WF9gPH5PGRB0/tmW0Xohce1JC0Iep0yFyS6yXpFxpqZd4B2OicmvOjZURoXSAgo
         tu4utK46pU9aOYqgmUx9bzYm/EMA055WBEqX98hHuPUDq0x9Ff8ANvKb6bELcu1RXNw2
         P7WBYN2k30AUj9nmE+Lfi2sZ7sf3d8wNOWuPKhpfDXpxSzNesoqiz+/fwB2wIZHiNvtN
         0dQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=2OU3OUJIPL9N+c8gTHs4p4OGEcSmr2mDXvv5veXo8XY=;
        b=NZkH5RVCzMgEdpCVwQZD+y0Ycdkkilm5ZkHNCVHn10n8pPMjsO0ZfvTYy7DA4lUDdG
         tSvAb3OGlqb/sR9spYY6Zo/EcU+YX2oSzyaN4QdEbU0zSVe90T2B+qRN8Rk0ikBnliWZ
         waIp1yWz0gXdmqPC9xs/c9+rmeuaGaUN6LdADz993gGC3vR8NDN105WQ8xSSvJ5ZW3NA
         Q6oYUwbu1NWz9p9pmKufOayId4pUmZagpL0auIDaQp/wP5mdobfy5Jp5HJ8i6UW/8maQ
         eXWXS9Nkecsea8DY6DMLKj+vSdYQ+i10unQcdcc88/fZTKo9/j02KCU3bM7c7wa7QEai
         Mcpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjlHEdeu;
       spf=pass (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=akshith.573@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id f7si474069vsh.2.2021.06.04.04.07.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 04:07:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id d9so9602371ioo.2
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 04:07:43 -0700 (PDT)
X-Received: by 2002:a5e:8d16:: with SMTP id m22mr3382683ioj.139.1622804862550;
 Fri, 04 Jun 2021 04:07:42 -0700 (PDT)
MIME-Version: 1.0
From: A G <akshith.573@gmail.com>
Date: Fri, 4 Jun 2021 04:07:30 -0700
Message-ID: <CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A@mail.gmail.com>
Subject: building kernel with `clang -fbasic-block-sections=labels`
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005f471c05c3eeb311"
X-Original-Sender: akshith.573@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EjlHEdeu;       spf=pass
 (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::d35
 as permitted sender) smtp.mailfrom=akshith.573@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000005f471c05c3eeb311
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm trying to do a basic block level analysis on the Linux kernel.
I've found the clang option "-fbasic-block-sections=labels" to be fit for
my analysis.

But when I compile with this option enabled, I run into this error:
```
/tmp/main-81886d.s: Assembler messages:
/tmp/main-81886d.s: Error: .size expression for .BB.set_reset_devices does
not evaluate to a constant
/tmp/main-81886d.s: Error: .size expression for .BB.debug_kernel does not
evaluate to a constant
/tmp/main-81886d.s: Error: .size expression for .BB.quiet_kernel does not
evaluate to a constant
/tmp/main-81886d.s: Error: .size expression for .BB.loglevel does not
evaluate to a constant
```

Setup:
```
*clang --version*
clang version 11.1.0 (git@github.com:llvm/llvm-project.git
1fdec59bffc11ae37eb51a1b9869f0696bfd5312)
Target: x86_64-unknown-linux-gnu

*make kernelversion*
5.10.0
```

Can you help me understand these errors / figure a way around this?
Happy to provide more information.

Best
G

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A%40mail.gmail.com.

--0000000000005f471c05c3eeb311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I&#39;m trying to do=
 a basic block level analysis on the Linux kernel.</div><div>I&#39;ve found=
 the clang option &quot;-fbasic-block-sections=3Dlabels&quot; to be fit for=
 my analysis.<br></div><div><br></div><div>But when I compile with this opt=
ion enabled, I run into this error:</div><div>```<br></div><div><span style=
=3D"font-family:monospace">/tmp/main-81886d.s: Assembler messages:<br>/tmp/=
main-81886d.s: Error: .size expression for .BB.set_reset_devices does not e=
valuate to a constant<br>/tmp/main-81886d.s: Error: .size expression for .B=
B.debug_kernel does not evaluate to a constant<br>/tmp/main-81886d.s: Error=
: .size expression for .BB.quiet_kernel does not evaluate to a constant<br>=
/tmp/main-81886d.s: Error: .size expression for .BB.loglevel does not evalu=
ate to a constant</span><br>```</div><div><br></div><div>Setup:</div><div>`=
``</div><div><b>clang --version</b><br>clang version 11.1.0 (git@github.com=
:llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)<br>Target:=
 x86_64-unknown-linux-gnu</div><div><br></div><div><b>make kernelversion</b=
><br>5.10.0</div><div>```<br></div><div><br></div><div>Can you help me unde=
rstand these errors / figure a way around this?</div><div>Happy to provide =
more information.</div><div><br></div><div>Best</div><div>G<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_v=
GD21A%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKf=
ScQKPw1PY_vGD21A%40mail.gmail.com</a>.<br />

--0000000000005f471c05c3eeb311--
