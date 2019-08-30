Return-Path: <clang-built-linux+bncBD66FMGZA4ILBPVG5MCRUBGWN3LCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F42A4030
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 00:12:02 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id l15sf3508700oic.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 15:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567203121; cv=pass;
        d=google.com; s=arc-20160816;
        b=Suos/x4GZITsOcYjNe0OckeD2ViauRDWjGtkqyOkJJ1jh1y5zZwNzGy5W6RNymgNtU
         ZaLLg3hk9ndr0TdDkUmPcY//NcNC9pGke2r9rfXbp8GKm2/nap0FYUlhQFIgHpxmI4Z3
         qVrP1P1MtHwprWsvWVzfhjOCCud0fgHw4YbiWNIUPZW9sBGfErZN3G0is32e8RW/F18w
         Acokti7GhHTiZzhhfvXub2GqOF7HEfEcxWly/gy6i07lL3tvGGSKyePn+XJBa5EB/1FQ
         Cxf1epTtcBel74spj0E8N1x1rR67rhcEeU3X6stqS/H7ObdcmaM70Y+eSoYZ01MmQhad
         XIrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :reply-to:mime-version:dkim-signature;
        bh=/lLiGfVXnccfB4Eo9tCONlkNBQu9Lzoxc0NHD/AJOBc=;
        b=wv8t5ZQ2TSPRGaSAKLL5blNBpRUHENRHQXZalwngMhWoffpeBBqJD9CyxzB7HVocWe
         LxkWjzA8MvJ+1cwA4IxnU4E4LGYbGRWRtbSb0gOYacoKXSSz0Pqeu7SGOvFD/aX75qq5
         vRnGpnIA4SbXu8F34HNKzXpWP5+/xv1sCzCwpHgrNNKvjuJEvZCA4FzwGUd8gS5DGEu6
         CLqVqxVh0wi4Qs11iOMXv641v0WOfZSufGAbEnn/0M094Md9/YCg3PYL7kl8yI/oaY1e
         74Txbsj6+pce4GWrdeEuGk+uClMx9XhFucVOq8Dun/YYssxqYKM6W3N6XACa/ekzdspt
         bQiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UKEkWUwE;
       spf=pass (google.com: domain of 3l59pxqukeqysuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com designates 2607:f8b0:4864:20::246 as permitted sender) smtp.mailfrom=3L59pXQUKEQYsuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/lLiGfVXnccfB4Eo9tCONlkNBQu9Lzoxc0NHD/AJOBc=;
        b=dhzy3ac3RNs+5hkW1gKeHwVbSLltwJiXnkTQq3JU9QqNUfS7cvn2hmjw8Kvgl9GCba
         sTjvINEHQkn0cp2/GQMbCmJFb560RsI18OQNIVTopJ3R2SwQYnNrmXM4uYCreZLwzqnA
         4JOxAZRFXbiw+9azTDwe8rCdSWk/kS30ddbckrWLW3IA7gGA8ltFpSlwYtVf7cH/Ws3H
         xBdKBKbuXgYUH4yoDI+LIXptZ2C3z52WpxldGytLpMpRA1c0LVxvBMpsNPa7BMbSjgOj
         Xxw8Hwn1dyEYmCkdYzyIvjXBnPz8RZFf+DO2ZV1cXpZnUhE28VE61qt18qKXfa+lXF+/
         sOQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
         :from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/lLiGfVXnccfB4Eo9tCONlkNBQu9Lzoxc0NHD/AJOBc=;
        b=N4hTGeeV71iF7+7jCn4mUmJURpHhI84AhcbBbqHdqDZ4KUWwFLdK9AfxZsHZTFJb9x
         g0CdS6lteQcr59Jp3/ZVT1me6MaQsCtY/xwAXzi7m4qVNa4oD4SRX5OnyZxT9jcZykxZ
         3yuJ8U+we+IHuT6rEvq1A2jPXG6XWayytNvWamJk5pTzADYaftPLT1wczdxOw4jl0mzn
         WMt7dgtA4eoYu237BO44DLNEv3gOnsOYMIwyecgzsUP5b7NLxVF4FoUofvhT89Mu3naG
         fP3j0cvqLIGWhJ/nP4RLUJC80cNySskSm2ldhXLp22zFo7An28r1boEbakW+1UX89bIN
         HM+g==
X-Gm-Message-State: APjAAAWeRNLL8LzZXDZXuqESUeX8Bg+/1BLcJZcH3BDKK6U4ZGmwXJ56
	Ekd5uSDokZAS+pHeRLkG7LI=
X-Google-Smtp-Source: APXvYqz+MYPv2stI5ScIk/KO5YBfVtDUZh0PJAxbRnZgeJGCDTuLjaFXFbsWHsEBmq8z+WlAauM+zA==
X-Received: by 2002:a9d:7241:: with SMTP id a1mr9143996otk.219.1567203120960;
        Fri, 30 Aug 2019 15:12:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3e57:: with SMTP id l84ls450901oia.7.gmail; Fri, 30 Aug
 2019 15:12:00 -0700 (PDT)
X-Received: by 2002:aca:61c3:: with SMTP id v186mr12513576oib.28.1567203120569;
        Fri, 30 Aug 2019 15:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567203120; cv=none;
        d=google.com; s=arc-20160816;
        b=EfkV8PpN+QWDEY94822xT+e/GSnZYmUT2bWXoCpwv7K7by2MQqFZZirj/8J3TLe8cc
         iioSaqFe/kzfn8HH2VnI5W8hmweETJ+lKLQTg5oWiil+Sqb47IYdYR4DhtO1kaxAFtsZ
         w1Z/WhU0d9GFqDG6LKQnwLXHWxaB7X0YmpEk3LCOkWVUGklQZKj6/0PD3d5ZHQeO6qAr
         xtzWI3AH1tNNH5tm7qJ9YO/vlTJ6iXJ1/mBw4ZPT9Z2LjWlucxC6BXaeY7HSbOHTNmbU
         gmCsD5cr+BhfD94OfatLSOyWmOlikQm6YC7vyMwZyrfXnuXQS2V8n4FHCiWzuZGsH6ha
         YhUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:reply-to:mime-version
         :dkim-signature;
        bh=a/eRpoSSy5LLexQqk12F8XKG23ray69G8J2h6fTNyI0=;
        b=qUSZr6rerYDZ2vI3+oi0l/nPPKoC3YCHNRqpejJOstTShf8bBU2OvAUv63RjB34WTA
         C/4F9mLOQaVXuJyvS2hvub5p7KnWy7t8UCOLSwuxAR3mrBxcj26UVDpyopDpPVF0v7fS
         s8j9HjXd5hp1IzrgFGcrd+Ksrni/Ix9JtZeFgBp3fyZfGgZAqT5zfQip/eZuq35hgzmU
         XwPX5w1/3VnPsb95tk/suTM+B99Dt1k8qhxqPF13mveqO6C21c6DGdSylhXAL2/sFP8V
         JhhVg26fjfgrjfglLqfUtuU0su/kGKzboB0tYxY21Vl5HzYhDwd/0NfPT8O/MXf/DF8Q
         lIlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UKEkWUwE;
       spf=pass (google.com: domain of 3l59pxqukeqysuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com designates 2607:f8b0:4864:20::246 as permitted sender) smtp.mailfrom=3L59pXQUKEQYsuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com. [2607:f8b0:4864:20::246])
        by gmr-mx.google.com with ESMTPS id p23si386208ota.2.2019.08.30.15.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 15:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l59pxqukeqysuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com designates 2607:f8b0:4864:20::246 as permitted sender) client-ip=2607:f8b0:4864:20::246;
Received: by mail-oi1-x246.google.com with SMTP id l124so3506841oih.12
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 15:12:00 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a9d:4801:: with SMTP id c1mr14397390otf.94.1567203119998;
 Fri, 30 Aug 2019 15:11:59 -0700 (PDT)
Reply-To: morbo@google.com
X-No-Auto-Attachment: 1
Message-ID: <000000000000429e9d05915ce913@google.com>
Date: Fri, 30 Aug 2019 22:12:00 +0000
Subject: Clang-Built Linux Meet-Up
From: morbo via Clang Built Linux <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000429e8c05915ce910"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UKEkWUwE;       spf=pass
 (google.com: domain of 3l59pxqukeqysuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com
 designates 2607:f8b0:4864:20::246 as permitted sender) smtp.mailfrom=3L59pXQUKEQYsuxhumuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@trix.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: morbo@google.com
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

--000000000000429e8c05915ce910
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Clang-Built Linux Meet-Up

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/viewform?vc=0&amp;c=0&amp;w=1&amp;usp=mail_form_link

The Clang-Built Meet up is back on! We&#39;re planning on having it during  
the first part of next year. This farm is to help pick a date so that  
everyone who wants to attend can attend. The dates that we list here  
aren&#39;t the only possible dates. If none of these dates work for you,  
please let us know.

Share and enjoy!
-bw

Google Forms: Create and analyze surveys.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000429e9d05915ce913%40google.com.

--000000000000429e8c05915ce910
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: Roboto,Helvetica,Arial,sans-serif; margin=
: 0; padding: 0; height: 100%; width: 100%;"><table border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"background-color:rgb(95,42,4);" width=3D=
"100%" role=3D"presentation"><tbody><tr height=3D"64px"><td style=3D"paddin=
g-left: 24px"><img alt=3D"Google Forms" height=3D"26px" style=3D"display: i=
nline-block; margin: 0; vertical-align: middle;" width=3D"143px" src=3D"htt=
ps://www.gstatic.com/docs/forms/google_forms_logo_lockup_white_2x.png"></td=
></tr></tbody></table><div style=3D"padding: 24px; background-color:rgb(248=
,207,184)"><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"max-width: 672px; min-width: 154px;" width=3D"100%" role=
=3D"presentation"><tbody><tr><td style=3D"font-size: 13px; line-height: 18p=
x; color: #424242; font-weight: 700">Having trouble viewing or submitting t=
his form?</td></tr><tr height=3D"8px"><td></td></tr><tr><td><table border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tbody><tr><td><a=
 href=3D"https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt=
6z5fMQSB_F9_tCBgMLooEPBQ/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;usp=3Dmail=
_form_link" style=3D"border-radius: 3px; box-sizing: border-box; display: i=
nline-block; font-size: 13px; font-weight: 700; height: 40px; line-height: =
40px; padding: 0 24px; text-align: center; text-decoration: none; text-tran=
sform: uppercase; vertical-align: middle; color: #fff; background-color: rg=
b(95,42,4);" target=3D"_blank" rel=3D"noopener">Fill out in Google Forms</a=
></td></tr></tbody></table></td></tr><tr height=3D"24px"><td></td></tr></tb=
ody></table><div align=3D"center" style=3D"background-color: #fff; border-b=
ottom: 1px solid #e0e0e0; margin: 0 auto; max-width: 624px; min-width: 154p=
x; padding: 0 24px;"><table align=3D"center" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"background-color: #fff;" width=3D"100%" role=3D"presentatio=
n"><tbody><tr height=3D"24px"><td></td></tr><tr><td><span style=3D"display:=
 table-cell; vertical-align: top; font-size: 13px; line-height: 18px; color=
: #424242;" dir=3D"auto">The Clang-Built Meet up is back on! We&#39;re plan=
ning on having it during the first part of next year. This farm is to help =
pick a date so that everyone who wants to attend can attend. The dates that=
 we list here aren&#39;t the only possible dates. If none of these dates wo=
rk for you, please let us know.<br><br>Share and enjoy!<br>-bw</span></td><=
/tr><tr height=3D"20px"><td></tr><tr style=3D"font-size: 20px; line-height:=
 24px;"><td dir=3D"auto"><a href=3D"https://docs.google.com/forms/d/e/1FAIp=
QLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/viewform?vc=3D0&amp;c=
=3D0&amp;w=3D1&amp;usp=3Dmail_form_link" style=3D"color: rgb(95,42,4); text=
-decoration: none; vertical-align: middle; font-weight: 500">Clang-Built Li=
nux Meet-Up</a><div itemprop=3D"action" itemscope itemtype=3D"http://schema=
.org/ViewAction"><meta itemprop=3D"url" content=3D"https://docs.google.com/=
forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/viewform=
?vc=3D0&amp;c=3D0&amp;w=3D1&amp;usp=3Dmail_goto_form"><meta itemprop=3D"nam=
e" content=3D"Fill out form"></div></td></tr><tr height=3D"16px"></tr><tr><=
td style=3D"display: table-cell; vertical-align: top; font-size: 13px; line=
-height: 18px; color: #424242;" dir=3D"auto">Where: Google Campus, Z=C3=BCr=
ich, Switzerland<br>When: That&#39;s what this survey is to determine...</t=
d></tr><tr height=3D"24px"></tr><tr><td><div class=3D"ss-form" style=3D""><=
form action=3D"https://docs.google.com/forms/u/1/d/e/1FAIpQLSeW7HRyd7AnC-Cp=
Dy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/formResponse" method=3D"POST" id=3D"ss-f=
orm" target=3D"_self" style=3D""><ol role=3D"list" class=3D"ss-question-lis=
t" style=3D"padding-left: 0;list-style-type:none;">

<div class=3D"ss-form-question errorbox-good" role=3D"listitem" style=3D"">
<div dir=3D"auto" class=3D"ss-item ss-item-required ss-text" style=3D"margi=
n:12px 0;"><div class=3D"ss-form-entry" style=3D"margin-bottom:1.5em;vertic=
al-align:middle;margin-left:0;margin-top:0;max-width:100%;">
<label class=3D"ss-q-item-label" for=3D"entry_2092238618" style=3D""><div c=
lass=3D"ss-q-title" style=3D"display:block;font-weight:bold;margin-top:.83e=
m;margin-bottom:.83em;">Name
<label for=3D"itemView.getDomIdToLabel()" aria-label=3D"(Required field)" s=
tyle=3D""></label>
<span class=3D"ss-required-asterisk" aria-hidden=3D"true" style=3D"color:#c=
43b1d;">*</span></div>
<div class=3D"ss-q-help ss-secondary-text" dir=3D"auto" style=3D"display:bl=
ock;margin:.1em 0 .25em 0;color:#666;"></div></label>

<input type=3D"text" name=3D"entry.2092238618" value=3D"" class=3D"ss-q-sho=
rt" id=3D"entry_2092238618" dir=3D"auto" aria-label=3D"Name  " aria-require=
d=3D"true" title=3D"" style=3D"">


</div></div></div> <div class=3D"ss-form-question errorbox-good" role=3D"li=
stitem" style=3D"">
<div dir=3D"auto" class=3D"ss-item ss-item-required ss-text" style=3D"margi=
n:12px 0;"><div class=3D"ss-form-entry" style=3D"margin-bottom:1.5em;vertic=
al-align:middle;margin-left:0;margin-top:0;max-width:100%;">
<label class=3D"ss-q-item-label" for=3D"entry_1556369182" style=3D""><div c=
lass=3D"ss-q-title" style=3D"display:block;font-weight:bold;margin-top:.83e=
m;margin-bottom:.83em;">Email
<label for=3D"itemView.getDomIdToLabel()" aria-label=3D"(Required field)" s=
tyle=3D""></label>
<span class=3D"ss-required-asterisk" aria-hidden=3D"true" style=3D"color:#c=
43b1d;">*</span></div>
<div class=3D"ss-q-help ss-secondary-text" dir=3D"auto" style=3D"display:bl=
ock;margin:.1em 0 .25em 0;color:#666;"></div></label>

<input type=3D"email" name=3D"entry.1556369182" value=3D"" class=3D"ss-q-sh=
ort" id=3D"entry_1556369182" dir=3D"auto" aria-label=3D"Email  Must be a va=
lid email address" aria-required=3D"true" title=3D"Must be a valid email ad=
dress" style=3D"">


</div></div></div> <div class=3D"ss-form-question errorbox-good" role=3D"li=
stitem" style=3D"">
<div dir=3D"auto" class=3D"ss-item ss-item-required ss-radio" style=3D"marg=
in:12px 0;"><div class=3D"ss-form-entry" style=3D"margin-bottom:1.5em;verti=
cal-align:middle;margin-left:0;margin-top:0;max-width:100%;">
<label class=3D"ss-q-item-label" for=3D"entry_1212825914" style=3D""><div c=
lass=3D"ss-q-title" style=3D"display:block;font-weight:bold;margin-top:.83e=
m;margin-bottom:.83em;">What weekend is best for you?
<label for=3D"itemView.getDomIdToLabel()" aria-label=3D"(Required field)" s=
tyle=3D""></label>
<span class=3D"ss-required-asterisk" aria-hidden=3D"true" style=3D"color:#c=
43b1d;">*</span></div>
<div class=3D"ss-q-help ss-secondary-text" dir=3D"auto" style=3D"display:bl=
ock;margin:.1em 0 .25em 0;color:#666;"></div></label>


<ul class=3D"ss-choices" role=3D"radiogroup" aria-label=3D"What weekend is =
best for you?  " style=3D"list-style:none;padding:0;margin:.5em 0 0;"><li c=
lass=3D"ss-choice-item" style=3D"margin:0;line-height:1.3em;padding-bottom:=
.5em;">
<label><span class=3D"ss-choice-item-control goog-inline-block" style=3D"po=
sition:relative;display:inline-block;"><input type=3D"radio" name=3D"entry.=
1753222212" value=3D"24-26 January 2020" id=3D"group_1753222212_1" role=3D"=
radio" class=3D"ss-q-radio" aria-label=3D"24-26 January 2020" aria-required=
=3D"true" style=3D""></span>
<span class=3D"ss-choice-label" style=3D"">24-26 January 2020</span>
</label></li> <li class=3D"ss-choice-item" style=3D"margin:0;line-height:1.=
3em;padding-bottom:.5em;">
<label><span class=3D"ss-choice-item-control goog-inline-block" style=3D"po=
sition:relative;display:inline-block;"><input type=3D"radio" name=3D"entry.=
1753222212" value=3D"7-9 February 2020" id=3D"group_1753222212_2" role=3D"r=
adio" class=3D"ss-q-radio" aria-label=3D"7-9 February 2020" aria-required=
=3D"true" style=3D""></span>
<span class=3D"ss-choice-label" style=3D"">7-9 February 2020</span>
</label></li> <li class=3D"ss-choice-item" style=3D"margin:0;line-height:1.=
3em;padding-bottom:.5em;">
<label><span class=3D"ss-choice-item-control goog-inline-block" style=3D"po=
sition:relative;display:inline-block;"><input type=3D"radio" name=3D"entry.=
1753222212" value=3D"14-16 February 2020" id=3D"group_1753222212_3" role=3D=
"radio" class=3D"ss-q-radio" aria-label=3D"14-16 February 2020" aria-requir=
ed=3D"true" style=3D""></span>
<span class=3D"ss-choice-label" style=3D"">14-16 February 2020</span>
</label></li> <li class=3D"ss-choice-item" style=3D"margin:0;line-height:1.=
3em;padding-bottom:.5em;">
<label><span class=3D"ss-choice-item-control goog-inline-block" style=3D"po=
sition:relative;display:inline-block;"><input type=3D"radio" name=3D"entry.=
1753222212" value=3D"None of these dates work for me" id=3D"group_175322221=
2_4" role=3D"radio" class=3D"ss-q-radio" aria-label=3D"None of these dates =
work for me" aria-required=3D"true" style=3D""></span>
<span class=3D"ss-choice-label" style=3D"">None of these dates work for me<=
/span>
</label></li> <li class=3D"ss-choice-item" style=3D"margin:0;line-height:1.=
3em;padding-bottom:.5em;">
<label><span class=3D"ss-choice-item-control goog-inline-block" style=3D"po=
sition:relative;display:inline-block;"><input type=3D"radio" name=3D"entry.=
1753222212" value=3D"Any of these dates work for me" id=3D"group_1753222212=
_5" role=3D"radio" class=3D"ss-q-radio" aria-label=3D"Any of these dates wo=
rk for me" aria-required=3D"true" style=3D""></span>
<span class=3D"ss-choice-label" style=3D"">Any of these dates work for me</=
span>
</label></li></ul>

</div></div></div> <div class=3D"ss-form-question errorbox-good" role=3D"li=
stitem" style=3D"">
<div dir=3D"auto" class=3D"ss-item  ss-paragraph-text" style=3D"margin:12px=
 0;"><div class=3D"ss-form-entry" style=3D"margin-bottom:1.5em;vertical-ali=
gn:middle;margin-left:0;margin-top:0;max-width:100%;">
<label class=3D"ss-q-item-label" for=3D"entry_1717970296" style=3D""><div c=
lass=3D"ss-q-title" style=3D"display:block;font-weight:bold;margin-top:.83e=
m;margin-bottom:.83em;">If you&#39;re interested in giving a presentation, =
please give a brief synopsis.
</div>
<div class=3D"ss-q-help ss-secondary-text" dir=3D"auto" style=3D"display:bl=
ock;margin:.1em 0 .25em 0;color:#666;"></div></label>

<textarea name=3D"entry.1717970296" rows=3D"8" cols=3D"0" class=3D"ss-q-lon=
g" id=3D"entry_1717970296" dir=3D"auto" aria-label=3D"If you&#39;re interes=
ted in giving a presentation, please give a brief synopsis.  " style=3D"res=
ize:vertical;width:70%;"></textarea>


</div></div></div>
<input type=3D"hidden" name=3D"draftResponse" value=3D"[null,null,&quot;382=
661078366218757&quot;]
" style=3D"">
<input type=3D"hidden" name=3D"pageHistory" value=3D"0" style=3D"">

<input type=3D"hidden" name=3D"usp" value=3D"mail_form_submit" style=3D"">

<input type=3D"hidden" name=3D"fbzx" value=3D"382661078366218757" style=3D"=
">
<div class=3D"ss-send-email-receipt" style=3D"margin-bottom: 4px;" dir=3D"l=
tr"><label for=3D"emailReceipt" style=3D"display:inline;"></label></div>
<div class=3D"ss-item ss-navigate" style=3D"margin:12px 0;"><table id=3D"na=
vigation-table" style=3D""><tbody><tr><td class=3D"ss-form-entry goog-inlin=
e-block" id=3D"navigation-buttons" dir=3D"ltr" style=3D"margin-bottom:1.5em=
;vertical-align:middle;margin-left:0;margin-top:0;max-width:100%;position:r=
elative;display:inline-block;">
<input type=3D"submit" name=3D"submit" value=3D"Submit" id=3D"ss-submit" cl=
ass=3D"jfk-button jfk-button-action " style=3D"">
<div class=3D"ss-password-warning ss-secondary-text" style=3D"color:#666;">=
Never submit passwords through Google Forms.</div></td>
</tr></tbody></table></div></ol></form></div>
<div class=3D"ss-footer" style=3D""><div class=3D"ss-attribution" style=3D"=
"></div>
<div class=3D"ss-legal" style=3D""><div class=3D"disclaimer-separator" styl=
e=3D""></div>
<div class=3D"disclaimer" dir=3D"ltr" style=3D""><div class=3D"powered-by-l=
ogo" style=3D"margin-top:2em;"><span class=3D"powered-by-text" style=3D"">P=
owered by</span>
<a href=3D"https://www.google.com/forms/about/?utm_source=3Dproduct&amp;utm=
_medium=3Dforms_logo&amp;utm_campaign=3Dforms" style=3D""><div class=3D"ss-=
logo-container" style=3D""><img src=3D"https://ssl.gstatic.com/docs/forms/f=
orms_logo_2_small_dark_2x.png" height=3D"21px" width=3D"108px" alt=3D"Googl=
e Forms" style=3D""></div></a></div>
<div class=3D"ss-terms" style=3D"color:#777;font-size:11px;margin-top:1.5em=
;"><span class=3D"disclaimer-msg" style=3D"">This form was created inside o=
f Google.com.</span>
<br>
<a href=3D"http://www.google.com" style=3D"">Google</a>
-
<a href=3D"http://www.google.com/policies" style=3D"">Privacy &amp; Terms</=
a>
-
<a href=3D"https://www.google.com/about" style=3D"">About Google</a></div><=
/div></div></div>
</td></tr><tr height=3D"24px"></tr></tbody></table></div><table align=3D"ce=
nter" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width: 672px; min-wi=
dth: 154px;" width=3D"100%" role=3D"presentation"><tbody><tr height=3D"24px=
"><td></td></tr><tr><td><a href=3D"https://docs.google.com/forms?usp=3Dmail=
_form_link" style=3D"color: #424242; font-size: 13px;">Create your own Goog=
le Form</a></td></tr></tbody></table></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000429e9d05915ce913%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000429e9d05915ce913%40google.com</a>.<br />

--000000000000429e8c05915ce910--
