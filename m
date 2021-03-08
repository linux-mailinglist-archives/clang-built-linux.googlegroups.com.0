Return-Path: <clang-built-linux+bncBDR6VDH5VEERBWHSTGBAMGQEGJDDQIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 359F4331725
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 20:22:01 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id x14sf1931392uac.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 11:22:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615231320; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Mvxv5gk8To0Zi51iKvGzXrP3T1P0/CjBtrhc1svEb4Uv6Jk+PzErwj6fqCF8PFAnk
         koWMToza3UQWysbooKbBvDKnzyS0gRB8iBDXpTLUcTdRY1fOEc7ATxcs4DfiP8Wc8DDA
         PsyZVIU6R02bEef6hukGUy+Ip5q0MZHJtf6e/9xFUwPhszjp22TDXnT8I2SRQiaZOL81
         4chui2G9N2vK3vG0HCsMK6xQxLcr0/Ua4AMfdevN7VWimXD2BPMve4WM3szEb4K40lzM
         7f1APMoJtt7XaxjLJimGKrJ4NFI47u6QGLRlvMlfdRY5v7C1l8GDbtTD3iHlzzWTOzwZ
         EqLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=29a5smaKWpAiagPqUJ57ZvVp1SAD4SjuO+KCEQnN0Gw=;
        b=BiyYLbj+eCDXBP8ryYNO3xHl4lXKP029lb/wRAalp9b3aYAywFfYlocIHqo5xdQQD6
         lsHDyiPRR+eFYaSdF1243Ok3djv47Zm+F0NMtRQwxHWaQSd2groO9MkPZ173vIbh5NKL
         lg7mkf0bpef/TtmFrZYzET9/sz15pdIZKJ0zG2wNC+cp6Tay+Mb/qghKntSa49ufoSrp
         4OQdOeZPljuO+citlYQr5KexD8tsWiyTO74XrqFjuPL+xkVEWJnA6Gme0MBK6CXFc4b4
         j0PlmtHTFP71+2o08Hjm3B+zyFdYyES7zPFXdUvKtPrazbBAKyl+bN8lG5GPqrJl68AJ
         f0bQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WYwi4/3F";
       spf=pass (google.com: domain of maria.salariss@gmail.com designates 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=maria.salariss@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=29a5smaKWpAiagPqUJ57ZvVp1SAD4SjuO+KCEQnN0Gw=;
        b=Lf3OuM3Lt1cq6GoA8FzhYG5QmYrAKWbkU/ZIP1BIPJ56D9CPHnHT8vatI+EtVdqVs2
         YL7V4tGP2xkFFV1GpcVTmNJRZ2ty6SbZWuXB6ADReMMzR6Ru8Ah3C9m0gFa82cMJYddB
         7U++L698/a1izRp9pUFR/Eh00cY7A55EEMn25a6Lf/F2D9Hb680YIPGx3rlXFYDhkI13
         ApLH8N4mjOurSVnKP5yPDTXHuDI/ECxM1WhRIIFD7Pc2o8DjOao/CqeNtKvG0WmpW5/K
         zQ8eMmloAD6w+Jfxb5gxWZ4eJjYqk2tpTGCBTRne1XwuNdb2SSCtCy1OsMw9xs9H9wPs
         0MkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=29a5smaKWpAiagPqUJ57ZvVp1SAD4SjuO+KCEQnN0Gw=;
        b=qmBk/dCQejlsRDKibTC+uK/MysnEerG9CQW6/bJGVHcGfp6NZlnSkWk8Z3O+N4G8L/
         6hql5FlERPGPjPH3gEI1L+rtCiQ16grYmi0r0oAFbLj1Jt10k8UgD4jDAwXIS62DjOIm
         kcboSr+1JUoHddEJBBBu3O0cusHrdX05cnXfpVlOYzjugyhYm63ws45cHLMV3oMZntfy
         KdFoc4IWDv43tA8azRY7NaZQF1gDUL5QcKMjIyYRHmJdJ8vnQd5jwVW0sY9dvcZQuHIy
         kR+f+thVFrjvZBTd+M5XZwS0GbHinV6Na9IRHf0BcEA7s6QOJtC+h8fUW5MNajcEnGkU
         jI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=29a5smaKWpAiagPqUJ57ZvVp1SAD4SjuO+KCEQnN0Gw=;
        b=X/pbLhJW+6ntYKRozJPdVr7pNHoxQFfRAzZGOd8tih192UME9xAdLvzhJ11sC8TVMe
         0aKM9vFCmyNsFAP8juWMBN41je1CLjKiiqM4b4Hk/rTnrIMVJEHAkYiX+/c6A/zAd6SQ
         pNBAZnIGTu6J1U02+WMpSyMGemeW8DscSYWgZvVUl+0FszzOwBrz3usE3NzwsbX04QtV
         GgzAkJdwJhcEfyPuD3zUw82ISLv4wUarRj2RrcTmQDcr4+tvOSDW4W1yPid46E16LYUg
         +d+HcjnWNEypc1OEpZ+0OBUQWZhP3h9eng/MTY0ZjkZMqpBPF8oHvw9pHCrw0F/7mhQx
         doqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/ZyEZREzAJmG+kf/01ZYfIcmuBPg4Re4vZ6C5zq0j32l0zjkG
	9VqHvNDv4nLnoqCaFImNrrM=
X-Google-Smtp-Source: ABdhPJz8iCRu4NLzi2tbHgcRTPNlSu/zIZdTx6g/0kQHWRhAu1f8MQO5zp5z/sHYxcCurjqj3fRQEA==
X-Received: by 2002:ab0:4e1c:: with SMTP id g28mr10012393uah.48.1615231320253;
        Mon, 08 Mar 2021 11:22:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6c44:: with SMTP id q4ls1427539uas.7.gmail; Mon, 08 Mar
 2021 11:21:59 -0800 (PST)
X-Received: by 2002:ab0:7656:: with SMTP id s22mr12772651uaq.67.1615231319708;
        Mon, 08 Mar 2021 11:21:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615231319; cv=none;
        d=google.com; s=arc-20160816;
        b=JO+0+Qnj6JWDf5qQwybHnc9Opf4VfiQKG0QG5Gy0scVs11YkHk6jKkmr5wWfQu+Uvl
         9ayyZS4DaEvLlfmcmiQ+fHOal0jdkEVJvgTpAyDYgJLG0Lvtonm7VL1h6HjbE8FPgMAY
         xbtbCHQPbr21ghZmiXKZifB43Qrf/Kl/VuCjnkoVeb7S8yY95nn93goG0515TUA98DOd
         86DosTo0vqYGWV5IAfVYnUDIcC5YYerApqvqdSOb1i4chxSka86qWmzKivEfJf9WEZod
         0xmDpTbs0DLY837I/+iH6G3MvHvQaLHlzbaFt44xIwvIce+bTsMw98Ir7ztChxuxiU/6
         K86Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bOAkjmNaXfQZYRX2ZchfS7FwO4p7p9IEsa40/ZnyGOc=;
        b=YK3qwnLK9fytaybrs7P+Jy3OJ2wzvy4H4W8+Roma9oKmmgF8HWawl5cTwbspkUfz5y
         1ZrgeV0okdL3vZSGTHReCPipWytKRUFxd5noaqINqCeIibRrgJ7iKV1rYgxTVAiys/en
         2sD29sH0aLJ7l4oIe7ko9ZV0wEJhnbwHQsDEtAARNENcl9hy6ZudGfueQdXbbzm7ruje
         pYJfTRE7ITXQxpqN6T+URIdNeHjwng5d6w0I4fGT8Ett/z61Ue70nhBVCGfG4riR7Wcn
         FDDnM3SGUllQxmAzgkCXCKx5WZ3zxGSOhGTv3lc+vS3N8BySBtGqFHGMa8ly94TCERow
         91Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WYwi4/3F";
       spf=pass (google.com: domain of maria.salariss@gmail.com designates 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=maria.salariss@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com. [2607:f8b0:4864:20::e2d])
        by gmr-mx.google.com with ESMTPS id x18si447420vko.0.2021.03.08.11.21.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 11:21:59 -0800 (PST)
Received-SPF: pass (google.com: domain of maria.salariss@gmail.com designates 2607:f8b0:4864:20::e2d as permitted sender) client-ip=2607:f8b0:4864:20::e2d;
Received: by mail-vs1-xe2d.google.com with SMTP id w76so5455672vsw.10
        for <clang-built-linux@googlegroups.com>; Mon, 08 Mar 2021 11:21:59 -0800 (PST)
X-Received: by 2002:a67:6786:: with SMTP id b128mr7497005vsc.9.1615231319479;
 Mon, 08 Mar 2021 11:21:59 -0800 (PST)
MIME-Version: 1.0
From: "j. Kirinec" <maria.salariss@gmail.com>
Date: Mon, 8 Mar 2021 20:21:46 +0100
Message-ID: <CAASRdVYbSBqyHy==oCV84DUjWiRqWBgtLRzS7TAXVRdJC8LMDg@mail.gmail.com>
Subject: hi there!
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000007519405bd0b590b"
X-Original-Sender: maria.salariss@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="WYwi4/3F";       spf=pass
 (google.com: domain of maria.salariss@gmail.com designates
 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=maria.salariss@gmail.com;
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

--00000000000007519405bd0b590b
Content-Type: text/plain; charset="UTF-8"

 Hello there,  How are you today? fine i hope. It's nice to meet you, and I
hope you do not mind me being connected with you in such a way. in actual
fact i was looking for my old friend who reside in your country and that
was when I came across your profile and I decided to write you. My name is
J. Kirinec, USA marine officer. I am in charge of medic. I will like to
hear from you if it so please with you, i believe it's curiosity that
brings me to you in a time like this.  It will be my wish to establish a
very strong relationship with you because I felt the both of us want the
same thing. Once again I must say that I am sorry if the connection with
you contradicts your moral ethics. I look forward to hearing from you.
Regards, J. Kirinec

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAASRdVYbSBqyHy%3D%3DoCV84DUjWiRqWBgtLRzS7TAXVRdJC8LMDg%40mail.gmail.com.

--00000000000007519405bd0b590b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">































Hello there, =C2=A0How are you today? fine i hope. It&#39;s nice to meet yo=
u, and I hope you do not mind me being connected with you in such a way. in=
 actual fact i was looking for my old friend who reside in your country and=
 that was when I came across your profile and I decided to write you. My na=
me is J. Kirinec, USA marine officer. I am in charge of medic. I will like =
to hear from you if it so please with you, i believe it&#39;s curiosity tha=
t brings me to you in a time like this.=C2=A0 It will be my wish to establi=
sh a very strong relationship with you because I felt the both of us want t=
he same thing. Once again I must say that I am sorry if the connection with=
 you contradicts your moral ethics. I look forward to hearing from you. Reg=
ards, J. Kirinec































































</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAASRdVYbSBqyHy%3D%3DoCV84DUjWiRqWBgtLRzS7TAXV=
RdJC8LMDg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAASRdVYbSBqyHy%3D%3DoCV84DUjWi=
RqWBgtLRzS7TAXVRdJC8LMDg%40mail.gmail.com</a>.<br />

--00000000000007519405bd0b590b--
