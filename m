Return-Path: <clang-built-linux+bncBDC7ZQ52YQBBBQXER77AKGQEVULYG5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 113602C7AD7
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 20:11:00 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id d189sf2184741vsd.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 11:10:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606677059; cv=pass;
        d=google.com; s=arc-20160816;
        b=HrRhkQ5t4k/UeKNySjKBZTuhVIjw/V6WwAJzdbNA1QfSt3LrNrt7mNleFEaoN+Q5pl
         pU+UUchTilS/XZvriLwgQsR6FEmSbTRBg6i6pw31/Hk8gT1vUFsmPIIiVbwThR/9cC02
         tC4M7zf5m2k/DkrlCdD2XAEOhgIkJlHFAw6oLCsRxCFhLd0t/zhGl5wW89bOn/T6TJ0C
         3YO0rolS+mlq80CVWlIBH3oguXIEF+5gFKctXyGWw7Rml+or0HIpqZ/XQeVN7w0YCkrb
         V/Rq5Ju4KRqZxq6IeFbF2ubBYLWwky3CGoNwTHM3TNzgEVd1PyR4Qri1SOp5ZV72xttn
         +JGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=I0CXNrvyJNQiOLfWCXJI76WzjZuF8RXQ9V53U7nACr0=;
        b=hIWmUgHlUgsJ1YzHWE+fAUgDXxRe9OhpcBKpfDNcaTvjndazokvK6UtIEyWOWROirp
         aDZj22+NkuZxaR6XW5F4+V1w3PDeKvarOO0CpCr2MwK9LDDy01GYIWa61QbaD5TofUdW
         TNHvGfKhxwcha8nvAlIUmnfD9VgGic2ocEinGEyItoVbQ3PpuK2R3ReCjY3GGPGXSCDx
         WXxFFfvjUd+NBAiHdOQZpMqPUFyH4ZaFimc56KRzQvSVCaooA6evkI/P2jVDmTdnJGMs
         6lNOwwWWRYPIH4tuI4AdIpxflC1z2iwaVkmUnz6NnBVYJbzmzVQjpPvKz63T4UuXpBcq
         V9eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cndU5brL;
       spf=pass (google.com: domain of 3qvldxw4jadsyfixijloofpz0ydjxfi.zlj@trix.bounces.google.com designates 2607:f8b0:4864:20::b48 as permitted sender) smtp.mailfrom=3QvLDXw4JADsYfiXijloofpz0ydjXfi.Zlj@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I0CXNrvyJNQiOLfWCXJI76WzjZuF8RXQ9V53U7nACr0=;
        b=QBJfp9Rp7kvq+hY+dUe5T65cnQGQuNsTaF4VCYEKv0Mbxpo/TBBLkgFdSmrD16XJFe
         6CpdIJiQBYVfyTJN+ePl3NSjGOFPjnyBi/t3P8KjW5RAGtIjGFMfiermTfpuaXKWDIk9
         xUqLiSxVbC6p+881BzGndOXk4jpa6UO8sFlmuDbXqK/cs+Vcl7W6IqWoFlNP/wqWUuti
         7cOg+tkQh5hfiYLtKOwuJ02ZmZO9tfpQE6AtNvfejSQztDBachOezK67ddXDdL6wBBGi
         FUgxtxNjiN/9THvL+JaRUX/iIBMiPCzgF2kmlWIPkieGQZf/sulf13/mSFsPbVvQRKvs
         tnog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I0CXNrvyJNQiOLfWCXJI76WzjZuF8RXQ9V53U7nACr0=;
        b=rGVRd0Jv+COwZS4xrgw2Ica0TitlLOSVGBx8glxcWOow7XkhBBJlPJjSFWnq3clk1H
         CiQnoo2dCdiqElh1L0E5N5bGFQNtK3CWnxASmTTUuclH9Wzt2tKxwT9HYSh3JPZRSiYq
         40xG0K/6k6I3ZWhzMUIi18gNDgbpfyzDFKIAqv86VV8NWERheVc4FmY5qu5AB0k7SIwb
         iRjX+f8x302tlLkq5faMr50fDsiM1V9bLsWk/eNHo0K5tK6R4dob0G9Ui8xgeTujGMH9
         wkz51zVdwj6833DB+NHwGjLa2m9RN/e9NOJ+DJ2GcdMMPJDzFtMh2qDUZmmeuoXkAUde
         OWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:message-id:date
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I0CXNrvyJNQiOLfWCXJI76WzjZuF8RXQ9V53U7nACr0=;
        b=jAzDbFiH73DT+aQLtHXKVRzTvouRZQvnFvonKwdRVA20bFwyWEAEPMa9OXW5eOkWSh
         5bm0HChdBp+JJ3WgplNnjw7ctuWMXS4x8l4J0BVD4hRbjRqd6U0oMEnSiWMscltICx1M
         3XITTcZyP6634Dsp4oyV8QVVhOaYG9pKnI0fcR2/SqZf0vi6nYy3VUjwP8GdCDGiaxaB
         6fzEaH0iXhrYiwSXW7Ni8F/e7qhVk/+SsIvZvDHOB91lniusLCMaH1917pHzbODAsc3U
         M6Jvun9trz+gP6Jmj5c1WsDjS3CeZ51InrjzWjR8OL3ac/BgLjCPZmJvOvYZxSk+eiCr
         hR1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gFONHmncGSzhd7zXofhxuk0UJFpCbqQUl9xFVBmC9fW3rUAoc
	egU4EjssafMO4uN7l3zHf8Q=
X-Google-Smtp-Source: ABdhPJySAU6xPgwho9oj/Br70lXj6+w+bOLcX8mahngl5pKpRl+RAgrMXpROcDZHVpi3nQtbLv6o8Q==
X-Received: by 2002:a9f:2786:: with SMTP id b6mr10857916uab.81.1606677058922;
        Sun, 29 Nov 2020 11:10:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e287:: with SMTP id g7ls211456vsf.5.gmail; Sun, 29 Nov
 2020 11:10:58 -0800 (PST)
X-Received: by 2002:a67:7902:: with SMTP id u2mr11872114vsc.41.1606677058524;
        Sun, 29 Nov 2020 11:10:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606677058; cv=none;
        d=google.com; s=arc-20160816;
        b=dRSlGUWVfDLOffwXmyS0oTD3dqd/37EC0oFG5GldBWrpzHzdoyOxQyR0vJCV3OiD0h
         U3BnG15ms/oL4qKMgo2JYws4PUNmJ9hjRQcwL8fuGJ2z3342ePTnykNjMV0VUNWQMBrY
         4Lr/b9oEbszf0cqt3xx1s1yPfWDo/0TZzVRBvTUEU6FcYVYnHLdU09MddqDlp1ZprQVR
         DJf/wh3TFud+76gdVPSrMitZBSFtweUa4ZItW/bxhgqw0L7P7DdAMNwI3o3x6RljAC0v
         oSrlI2nllqbdLkJNmI0Nw6MhS3WdToJ7p2iFP42A4etKDe5QXv1aDnU84zAyHqwEN+7o
         Agaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:reply-to:mime-version
         :dkim-signature;
        bh=IdRk9iYxaW+sx/uI2io8DupB30bsHlI3m3pmBpD9TVU=;
        b=p0E6HtQAVYdE7tZP4+3QhXpGyy9OJ3+4QzLwOjHRB/i8k3OulrooW2tbkDnqWzqFqf
         K372zWobjNe4jC2b6ke6eL5T6DNmg0pMeJS8vgg+nzSnCyUxLqvQ53je9AqQ/kFT9mhK
         gdVMGqiLn+zwNUn8sk4T0y9Dnw6p4ODa4FurZ9sFOlbo84Mv8biUvx/lmnQNdt4cdboX
         NcYgfRIRDJOQc03w+NK7ejmCBc8sfu8UOeCPuyai2sFGipcfABVeRigL+FywMsUz9D0z
         B9Bim37G7IuOEvkC6UDFzIo2IcM5PbjJKOGUh4ML2X8GwJAVx2AdatKN7/f5rQLDGxEY
         U4tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cndU5brL;
       spf=pass (google.com: domain of 3qvldxw4jadsyfixijloofpz0ydjxfi.zlj@trix.bounces.google.com designates 2607:f8b0:4864:20::b48 as permitted sender) smtp.mailfrom=3QvLDXw4JADsYfiXijloofpz0ydjXfi.Zlj@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com. [2607:f8b0:4864:20::b48])
        by gmr-mx.google.com with ESMTPS id a16si865363uas.1.2020.11.29.11.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Nov 2020 11:10:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qvldxw4jadsyfixijloofpz0ydjxfi.zlj@trix.bounces.google.com designates 2607:f8b0:4864:20::b48 as permitted sender) client-ip=2607:f8b0:4864:20::b48;
Received: by mail-yb1-xb48.google.com with SMTP id a13so13158674ybj.3
        for <clang-built-linux@googlegroups.com>; Sun, 29 Nov 2020 11:10:58 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a25:e758:: with SMTP id e85mt19819176ybh.51.1606677058280;
 Sun, 29 Nov 2020 11:10:58 -0800 (PST)
Reply-To: bilalmorris231@gmail.com
X-No-Auto-Attachment: 1
Message-ID: <00000000000053e2a705b543a748@google.com>
Date: Sun, 29 Nov 2020 19:10:58 +0000
Subject: Congratulation! (Mega Millions Lottery)
From: bilalmorris231@gmail.com
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005538de05b543a7f0"
X-Original-Sender: bilalmorris231@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cndU5brL;       spf=pass
 (google.com: domain of 3qvldxw4jadsyfixijloofpz0ydjxfi.zlj@trix.bounces.google.com
 designates 2607:f8b0:4864:20::b48 as permitted sender) smtp.mailfrom=3QvLDXw4JADsYfiXijloofpz0ydjXfi.Zlj@trix.bounces.google.com;
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

--0000000000005538de05b543a7f0
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

Congratulations You have won $ 850,000.00USD Your E-Mail Name Is Among
the Lucky Winners at Mega Millions Lottery Online promo, Ticket Number
(88910), For more information contact us Via Tel: +44} 7045746552. or
reply to this email: peterjeng042@gmail.com

Your winning reference numbers are PMG / EBD / 850AF and will Instruct you
on claim arrangements for your winning prize.

Please note this, You are only required to forward your Name and your  
Address.

Your Full Name.
Your Age.
Your Country / Home Address.
Your Telephone Number.
Your Occupation.

Thank you and once More Congratulations.

Yours faithfully,
Agent Morris Bilal.
Claims / verification Agent,

Google Forms: Create and analyze surveys.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000053e2a705b543a748%40google.com.

--0000000000005538de05b543a7f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: Roboto,Helvetica,Arial,sans-serif; margin=
: 0; padding: 0; height: 100%; width: 100%;"><table border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"background-color:rgb(103,58,183);" width=
=3D"100%" role=3D"presentation"><tbody><tr height=3D"64px"><td style=3D"pad=
ding: 0 24px;"><img alt=3D"Google Forms" height=3D"26px" style=3D"display: =
inline-block; margin: 0; vertical-align: middle;" width=3D"143px" src=3D"ht=
tps://www.gstatic.com/docs/forms/google_forms_logo_lockup_white_2x.png"></t=
d></tr></tbody></table><div style=3D"padding: 24px; background-color:rgb(23=
7,231,246)"><div align=3D"center" style=3D"background-color: #fff; border-b=
ottom: 1px solid #e0e0e0;margin: 0 auto; max-width: 624px; min-width: 154px=
;padding: 0 24px;"><table align=3D"center" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"background-color: #fff;" width=3D"100%" role=3D"presentation">=
<tbody><tr height=3D"24px"><td></td></tr><tr><td><span style=3D"display: ta=
ble-cell; vertical-align: top; font-size: 13px; line-height: 18px; color: #=
424242;" dir=3D"auto">Congratulations You have won $ 850,000.00USD Your E-M=
ail Name Is Among<br>the Lucky Winners at Mega Millions Lottery Online prom=
o, Ticket Number<br>(88910), For more information contact us Via Tel: +44} =
7045746552. or<br>reply to this email: peterjeng042@gmail.com<br><br>Your w=
inning reference numbers are PMG / EBD / 850AF and will Instruct you<br>on =
claim arrangements for your winning prize.<br><br>Please note this, You are=
 only required to forward your Name and your Address.<br><br>Your Full Name=
.<br>Your Age.<br>Your Country / Home Address.<br>Your Telephone Number.<br=
>Your Occupation.<br><br>Thank you and once More Congratulations.<br><br>Yo=
urs faithfully,<br>Agent Morris Bilal.<br>Claims / verification Agent,</spa=
n></td></tr><tr height=3D"20px"><td></tr><tr style=3D"font-size: 20px; line=
-height: 24px;"><td dir=3D"auto"><a href=3D"https://docs.google.com/forms/d=
/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw/viewform?vc=3D0=
&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_form_link" style=3D"color: =
rgb(103,58,183); text-decoration: none; vertical-align: middle; font-weight=
: 500">Untitled form</a><div itemprop=3D"action" itemscope itemtype=3D"http=
://schema.org/ViewAction"><meta itemprop=3D"url" content=3D"https://docs.go=
ogle.com/forms/d/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw=
/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_goto_form">=
<meta itemprop=3D"name" content=3D"Fill out form"></div></td></tr><tr heigh=
t=3D"24px"></tr><tr><td><table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%"><tbody><tr><td><a href=3D"https://docs.google.com/for=
ms/d/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw/viewform?vc=
=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_form_link" style=3D"bor=
der-radius: 3px; box-sizing: border-box; display: inline-block; font-size: =
13px; font-weight: 700; height: 40px; line-height: 40px; padding: 0 24px; t=
ext-align: center; text-decoration: none; text-transform: uppercase; vertic=
al-align: middle; color: #fff; background-color: rgb(103,58,183);" target=
=3D"_blank" rel=3D"noopener">Fill out form</a></td></tr></tbody></table></t=
d></tr><tr height=3D"24px"></tr></tbody></table></div><table align=3D"cente=
r" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width: 672px; min-width=
: 154px;" width=3D"100%" role=3D"presentation"><tbody><tr height=3D"24px"><=
td></td></tr><tr><td><a href=3D"https://docs.google.com/forms?usp=3Dmail_fo=
rm_link" style=3D"color: #424242; font-size: 13px;">Create your own Google =
Form</a></td></tr></tbody></table></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/00000000000053e2a705b543a748%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/00000000000053e2a705b543a748%40google.com</a>.<br />

--0000000000005538de05b543a7f0--
