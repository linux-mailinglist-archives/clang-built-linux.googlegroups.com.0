Return-Path: <clang-built-linux+bncBDFKPCXSSAHBB74R4T7AKGQEQSSODVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 473A52DB438
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 20:05:36 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a10sf11340890lfg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 11:05:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608059135; cv=pass;
        d=google.com; s=arc-20160816;
        b=E1K1c4sQfJ3MICTdcoq1Ihn/bNDqKdwRXL63elhGxMIpITpHarmNP2DpZwOvs9tqMg
         r48XIEw8+psu+OsrZr6AAibF/ct+FLnWwM5Omm2dTOntayyH4qECFp46bMj+q0rRMONv
         8Dxt8qEXAiqVqiPOz00NofuRA6Crn1B6AxPldiMwl8hvTkK+/nvHuqLCYMW/5wAnEZxq
         dh8DGMtXiXxp3DOTSQJUxSlaq7ercOgOxAFgd0gEAENhnSdJz2bizscC0LektipA8B0V
         8x1QAQSMN7jJCX6Cz5Q1Nuw6jbrqUWJz4z75a35amMAWo4N++dqIxvAzIHvjrjRzAfdK
         mC0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:auto-submitted
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:reply-to:from:date:sender:dkim-signature;
        bh=1Vqd85YNpzyIr9622bEwvGqextO1lIKZBG6Pv0VP82w=;
        b=x8sB2fumJFKsoU7qR7wlEPy2gVIvVvH+nDgu5QXNN2AF5ikaLYLZ0eH1jpBp55jHuO
         Hu4Bs9rcl64T8MQGTFVtvAq/u0KP1xy8VzigzVu6wmsE+opaechIwuOsIQX3rhMGmSTr
         7RqmJfzNWm8NOEM/B1VGDFo7MkUSd1DFTnLUiKIbHrwCS7eh44bnDx8q2AcD5If0KAEM
         x3gpm9P6/eygmIQRG1iclBQ+bCyHIU07sGCR1A2Onp0MhFtmZUYmWcPH75/qQ7t17OXI
         /aE/zgqpMNe7atXgWLB7Y28yztlHDpHo6IPkM3nqVtsmUpE6y6R319HlxYEGqa5oMpfi
         eO1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zendesk.com header.s=zendesk2 header.b=rrVNOi9V;
       spf=pass (google.com: domain of support@travis-ci.com designates 188.172.138.6 as permitted sender) smtp.mailfrom=support@travis-ci.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:reply-to:cc:message-id:in-reply-to:references
         :subject:mime-version:content-transfer-encoding:auto-submitted
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Vqd85YNpzyIr9622bEwvGqextO1lIKZBG6Pv0VP82w=;
        b=WPDmP/LlRxqCJH21sERessjU8rN8zXHkjppLQig0rH8joRBE+tTEo8oWBztiCjA9/1
         eCj+DMy/NfzNhKwXUUsNtUueVBgZ23QafvoeTHcmHytkDNILZMQkM/brfMdvX8ln5Dp+
         /aVdzERZyFBx49HcMuPkqZHUVLSadKKijv1C/ZVD8wV6xOlD42Iw6FkMrmLTM745nIFw
         6SZydLjUDgrBEa3tS3BSjbZ4XMs4nlzdfT1whScDjUHnD9M2LSamMsyudWbs1HDZ8fwT
         gAf1PwAKK8+omLhOJz6t+i/PHzDJWC4eXrKBsgZX84LWnvhtRF3Y6tFbRgfHVRqz1jRh
         sPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:reply-to:cc:message-id
         :in-reply-to:references:subject:mime-version
         :content-transfer-encoding:auto-submitted:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Vqd85YNpzyIr9622bEwvGqextO1lIKZBG6Pv0VP82w=;
        b=o0h5+hUN5r0TvirBr0+OWpGPdKBuU9zimhBeoq5iEK/a1BE1ATeI+ODUNlxqraC/2Q
         U3sKx6pqX2XAbohrhwnk2Kz/FH24PWIegbZslBFdde1AlOnQXTIzdsdE0fvmLKyf9k5l
         T2kOrN6I7YMi8cZkIawNF0t+QlB3SsL6+D7dw9OQ3xqFJOJFZC6aYyv/a2/PVLZ3V5qg
         bTi1MhTSTz6tkGB25yWI1ZBvwN6N5QS9Oyqyz7jOjxCRkkj6JqRP+3ubQZsJju1G7fcM
         kgnfXsEWAF1f9NFRiYvZVJXzit4yldFxYnxxxX0t3e/mec496ZXrmbnWkMUSINv4acME
         62kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BoWyK0pSsDJAVc/W23DKhtvTrIBw0OrPKzLRkjfYhDvS+G7ia
	QDIlL9dT3mQ1S0MMAwp9kCY=
X-Google-Smtp-Source: ABdhPJyJoY/QSnWFqX4lct907ASwG6ucC3APzPU47UA9ySCZoCy/VQry/4Aipe4Bsx/j5AeL7DrtXQ==
X-Received: by 2002:a05:651c:316:: with SMTP id a22mr12861633ljp.473.1608059135691;
        Tue, 15 Dec 2020 11:05:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls2502872ljc.9.gmail; Tue, 15 Dec
 2020 11:05:34 -0800 (PST)
X-Received: by 2002:a2e:8148:: with SMTP id t8mr4269918ljg.203.1608059134521;
        Tue, 15 Dec 2020 11:05:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608059134; cv=none;
        d=google.com; s=arc-20160816;
        b=mrrmilVCoAcUJzPeDId6XbBTtUKfE4+8BsbAfQCs+Be4lV41hXhend82lajpwTAyzm
         wHB1cZNKZXttX/osZrGrh8Lahn8qInnCje3DbNVl2Z4IJWP9+fMZ18SpvRGlv75+rKLO
         OQ2BIWOFtCprpSpF/7R9n+Iy4YkuQW4S+UAQRxi7Wbg0nk128/CzJhMKlh8OFhFb4XJm
         YdprLlZd9UFNwmKv+Oc3vKZ7U2sV0QEZR8ImLDINi0JOtHlcSng7g2ahvh0hTxz2LfRG
         K55gDHpeo49NHWkhGjwW1xMJbro72FZ40mKghunkKjJfbQIgiauGah9hxrRThe9D6wXy
         UkVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:auto-submitted:content-transfer-encoding
         :mime-version:subject:references:in-reply-to:message-id:cc:reply-to
         :from:date;
        bh=y4fl/wEG9W7L6/9LX9TAFtfPXru4qtzWvDO6xvWb1Qs=;
        b=rSPaClCrOA91A+ML1H9pGajHT07Hy6cdgkv9U9rDR73k7dDC3R7SFvPKfcR8LT0niw
         M54k4SO5WMoWNIQuWR1CEfhneaVszoSrXZMUEnahfeAZKzqyb+iyoGTtl0Wj8TLbZ1rx
         gDVWN9XuRIISx5OE0UA/CvapMil/wrGY17w6KomMTiRPaOlu7bZMQ99YaLvQSJZJhcFu
         V25xzJ/NySAysOl9VbJ9vcUAJLExeVMWaYMM0y5tULyuIDAmPDkseEKpt/hC2Lkv24XY
         TbWSU8jLmHtc70f8T4hlh7vJuvN8FxRBC7wf8ZI1YCKy6VB36oXwh7B23veEIYvkZIQD
         T+EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zendesk.com header.s=zendesk2 header.b=rrVNOi9V;
       spf=pass (google.com: domain of support@travis-ci.com designates 188.172.138.6 as permitted sender) smtp.mailfrom=support@travis-ci.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
Received: from outbyoip6.pod18.euc1.zdsys.com (outbyoip6.pod18.euc1.zdsys.com. [188.172.138.6])
        by gmr-mx.google.com with ESMTPS id h21si913530ljj.6.2020.12.15.11.05.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 11:05:34 -0800 (PST)
Received-SPF: pass (google.com: domain of support@travis-ci.com designates 188.172.138.6 as permitted sender) client-ip=188.172.138.6;
Received: from zendesk.com (unknown [10.218.218.38])
	by outbyoip6.pod18.euc1.zdsys.com (Postfix) with ESMTP id 4CwSQ54nlGz3hhT7;
	Tue, 15 Dec 2020 19:05:33 +0000 (UTC)
Date: Tue, 15 Dec 2020 19:05:33 +0000
From: "Erika Kuntar (Support)" <support@travis-ci.com>
Reply-To: Support <support@travis-ci.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
 Dan Rue <dan.rue@linaro.org>, 
 Stephen Hines <srhines@google.com>
Message-ID: <L7VKGOM25K_5fd908fd5600d_4b5665bc15886c_sprut@zendesk.com>
In-Reply-To: <CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx=DLuwg@mail.gmail.com>
References: <L7VKGOM25K@zendesk.com>
 <CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx=DLuwg@mail.gmail.com>
Subject: Request for OSS only credits
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="--==_mimepart_5fd908fd9df88_4b5665bc158917";
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Delivery-Context: event-id-686236246199
Auto-Submitted: auto-generated
X-Auto-Response-Suppress: All
X-Mailer: Zendesk Mailer
X-Zendesk-From-Account-Id: 68b8aed
X-Original-Sender: support@travis-ci.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zendesk.com header.s=zendesk2 header.b=rrVNOi9V;       spf=pass
 (google.com: domain of support@travis-ci.com designates 188.172.138.6 as
 permitted sender) smtp.mailfrom=support@travis-ci.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
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


----==_mimepart_5fd908fd9df88_4b5665bc158917
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

##- Please type your reply above this line -##

You are registered as a CC on this request (23735). Reply to this email to =
add a comment to the request.

----------------------------------------------

Erika Kuntar, Dec 15, 2020, 11:05 PST

Hello Nick=E2=80=8B ,

Thanks for contacting Travis-CI Support! We would love to help.

We offer an Open Source Subscription for free to non-commercial open-source=
 projects. To qualify for an Open Source subscription, the project must mee=
t the following requirements:


- You are a project lead or regular committer (latest commit in the last mo=
nth)
- Project must be at least 3 months old and is in active development (with =
regular commits and activity)
- Project meets the OSD specification
- Project must not be sponsored by a commercial company or organization (mo=
netary or with employees paid to work on the project)
- Project can not provide commercial services or distribute paid versions o=
f the software

Does this sound like you and your project? We'd be very happy to support yo=
u!

However, if your project does not match these requirements or you have furt=
her questions [1], please feel free to ask!

We look forward to your response if you meet these requirements to proceed =
with the next steps.

Thank you

[1] https://docs.travis-ci.com/user/billing-faq/

--
Erika

Your Friends @Travis CI

Test and Deploy with Confidence.
www.travis-ci.com

=E2=80=94
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: contact@travis-ci.org | Amtsgericht Charlottenburg, Berlin, HRB =
140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: D=
E282002648

----------------------------------------------

Nick Desaulniers, Dec 2, 2020, 10:43 PST

To Whom it May Concern,
Regarding our TravisCI project
(https://travis-ci.com/github/ClangBuiltLinux/continuous-integration),
I noticed that our last build stopped on Nov 20, 2020 with a banner
that reads:

"Builds have been temporarily disabled for public repositories due to
a negative credit balance. Please go to the Plan page to replenish
your credit balance or alter your Consume paid credits for OSS
setting."

I suspect this is in regards to the blog post:
https://blog.travis-ci.com/oss-announcement

On https://travis-ci.com/organizations/ClangBuiltLinux/plan, I can see
"You have used 16090 of 10000 credits; -6090 credits available." The
toggle for "Consume paid credits for OSS" looks enabled. When I click
on the "OSS only credits" I see we have 0 credits.

If I understand the note on
https://docs.travis-ci.com/user/billing-overview/#credits-vs-oss-only-credi=
ts
correctly, which reads:

"On occassion, an allotment of OSS Only credits may be granted by
Travis CI. These credits may be used only for builds over public
repositories and are meant for open source support. The OSS credits
may be assigned as one time pool or renewable pool, subject to case by
case assesment of Travis CI staff."

Then it sounds like we need to make a formal request for Travis CI
staff to review our case?

For more information on our project, it's performing build+boot tests
of the open source Linux kernel via the open source compiler toolchain
LLVM, then boot testing the resulting image via the open source
machine emulator QEMU using the open source Buildroot utility to
create minimal userspace images.

I am actively working with Linaro to offload the relatively expensive
builds to their tuxbuild service; I would still like to use Travis CI
for the github integration and ability to share hyperlinks to build
reports when Travis CI spots regressions (based on the number of
branches we're testing, Travis CI helps us spot regressions in the
Linux kernel daily).
--=20
Thanks,
~Nick Desaulniers

--------------------------------
This email is a service from Travis CI.









[L7VKGO-M25K]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/L7VKGOM25K_5fd908fd5600d_4b5665bc15886c_sprut%40zendesk.c=
om.

----==_mimepart_5fd908fd9df88_4b5665bc158917
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.=
w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=3D"http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
/>
  <style type=3D"text/css">
    table td {
      border-collapse: collapse;
    }
    body[dir=3Drtl] .directional_text_wrapper { direction: rtl; unicode-bid=
i: embed; }

  </style>
</head>
<body lang=3D"en-us" style=3D"width: 100%!important; margin: 0; padding: 0;=
" xml:lang=3D"en-us">
  <div style=3D"padding: 10px ; line-height: 18px; font-family: 'Lucida Gra=
nde',Verdana,Arial,sans-serif; font-size: 12px; color:#444444;">
    <div style=3D"color: #b5b5b5;">##- Please type your reply above this li=
ne -##</div>
    <p dir=3D"ltr">You are registered as a CC on this request (23735). Repl=
y to this email to add a comment to the request.</p><p dir=3D"ltr"></p><div=
 style=3D"margin-top: 25px" data-version=3D"2"><table width=3D"100%" cellpa=
dding=3D"0" cellspacing=3D"0" border=3D"0" role=3D"presentation">  <tbody><=
tr>    <td width=3D"100%" style=3D"padding: 15px 0; border-top: 1px dotted =
#c5c5c5;">      <table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" b=
order=3D"0" style=3D"table-layout:fixed;" role=3D"presentation">        <tb=
ody><tr>                      <td valign=3D"top" style=3D"padding: 0 15px 0=
 15px; width: 40px;">              <img width=3D"40" height=3D"40" alt=3D""=
 style=3D"height: auto; line-height: 100%; outline: none; text-decoration: =
none; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5=
px;" src=3D"https://travisci.zendesk.com/system/photos/3601/1804/6359/image=
0__1_.jpeg" />            </td>                    <td width=3D"100%" style=
=3D"padding: 0; margin: 0;" valign=3D"top">            <p style=3D"font-fam=
ily:'Lucida Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans=
-serif; font-size: 15px; line-height: 18px; margin-bottom: 0; margin-top: 0=
; padding: 0; color:#1b1d1e;" dir=3D"ltr">                                 =
                                   <strong>Erika Kuntar</strong> (Travis CI=
)                                                            </p>          =
  <p style=3D"font-family:'Lucida Grande','Lucida Sans Unicode','Lucida San=
s',Verdana,Tahoma,sans-serif; font-size: 13px; line-height: 25px; margin-bo=
ttom: 15px; margin-top: 0; padding: 0; color:#bbbbbb;" dir=3D"ltr">        =
      Dec 15, 2020, 11:05 PST            </p>                              =
      <div class=3D"zd-comment" dir=3D"auto" style=3D"color: #2b2e2f; font-=
family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-ser=
if; font-size: 14px; line-height: 22px; margin: 15px 0">Hello Nick=E2=80=8B=
 ,<br /><br />Thanks for contacting Travis-CI Support! We would love to hel=
p. <br /><br />We offer an Open Source Subscription for free to non-commerc=
ial open-source projects. To qualify for an Open Source subscription, the p=
roject must meet the following requirements:<br /><br /><ul dir=3D"auto" st=
yle=3D"list-style-type: disc; margin: 10px 0 15px 30px; padding-left: 15px"=
><li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'tahoma'=
, Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 10px 0">=
You are a project lead or regular committer (latest commit in the last mont=
h)<br /></li><li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grand=
e', 'tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; marg=
in: 10px 0">Project must be at least 3 months old and is in active developm=
ent (with regular commits and activity)<br /></li><li style=3D"font-family:=
 'Lucida Sans Unicode', 'Lucida Grande', 'tahoma', Verdana, sans-serif; fon=
t-size: 14px; line-height: 22px; margin: 10px 0">Project meets the <a href=
=3D"https://opensource.org/docs/osd" rel=3D"noreferrer">OSD</a> specificati=
on<br /></li><li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grand=
e', 'tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; marg=
in: 10px 0">Project must not be sponsored by a commercial company or organi=
zation (monetary or with employees paid to work on the project)<br /></li><=
li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'tahoma', =
Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 10px 0">Pr=
oject can not provide commercial services or distribute paid versions of th=
e software<br /></li></ul><br />Does this sound like you and your project? =
We'd be very happy to support you! <br /><br />However, if your project doe=
s not match these requirements or you have further questions [1], please fe=
el free to ask!<br /><br />We look forward to your response if you meet the=
se requirements to proceed with the next steps.<br /><br />Thank you<br /><=
br />[1] <a href=3D"https://docs.travis-ci.com/user/billing-faq/" rel=3D"no=
referrer">https://docs.travis-ci.com/user/billing-faq/</a><br /><div class=
=3D"signature"><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida=
 Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: =
14px; line-height: 22px; margin: 15px 0">--<br />
Erika</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans =
Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; =
line-height: 22px; margin: 15px 0">Your Friends @Travis CI<br /><br />
Test and Deploy with Confidence.<br /><a href=3D"http://www.travis-ci.com" =
rel=3D"noreferrer">www.travis-ci.com</a></p><p dir=3D"ltr" style=3D"color: =
#2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Ver=
dana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">=E2=
=80=94<br />
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: <a href=3D"mailto:contact@travis-ci.org" rel=3D"noreferrer">cont=
act@travis-ci.org</a> | Amtsgericht Charlottenburg, Berlin, HRB 140133 B | =
Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: DE282002648<=
/p></div></div><p dir=3D"ltr">                                  </p></td>  =
      </tr>      </tbody></table>    </td>  </tr></tbody></table><p dir=3D"=
ltr"></p><table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" role=3D"presentation">  <tbody><tr>    <td width=3D"100%" style=3D"p=
adding: 15px 0; border-top: 1px dotted #c5c5c5;">      <table width=3D"100%=
" cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"table-layout:fi=
xed;" role=3D"presentation">        <tbody><tr>                      <td va=
lign=3D"top" style=3D"padding: 0 15px 0 15px; width: 40px;">              <=
img width=3D"40" height=3D"40" alt=3D"" style=3D"height: auto; line-height:=
 100%; outline: none; text-decoration: none; -webkit-border-radius: 5px; -m=
oz-border-radius: 5px; border-radius: 5px;" src=3D"https://secure.gravatar.=
com/avatar/5fc870b8c20eabbd093381ac52df9726?size=3D40&amp;default=3Dhttps%3=
A%2F%2Fassets.zendesk.com%2Fimages%2F2016%2Fdefault-avatar-80.png&amp;r=3Dg=
" />            </td>                    <td width=3D"100%" style=3D"paddin=
g: 0; margin: 0;" valign=3D"top">            <p style=3D"font-family:'Lucid=
a Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; fo=
nt-size: 15px; line-height: 18px; margin-bottom: 0; margin-top: 0; padding:=
 0; color:#1b1d1e;" dir=3D"ltr">                              <strong>Nick =
Desaulniers</strong>                          </p>            <p style=3D"f=
ont-family:'Lucida Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Taho=
ma,sans-serif; font-size: 13px; line-height: 25px; margin-bottom: 15px; mar=
gin-top: 0; padding: 0; color:#bbbbbb;" dir=3D"ltr">              Dec 2, 20=
20, 10:43 PST            </p>                                    <div class=
=3D"zd-comment" dir=3D"auto" style=3D"color: #2b2e2f; font-family: 'Lucida =
Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 1=
4px; line-height: 22px; margin: 15px 0"><p dir=3D"ltr" style=3D"color: #2b2=
e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana=
, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">To Whom i=
t May Concern,<br />Regarding our TravisCI project<br />(<a href=3D"https:/=
/travis-ci.com/github/ClangBuiltLinux/continuous-integration" target=3D"_bl=
ank" rel=3D"nofollow noreferrer">https://travis-ci.com/github/ClangBuiltLin=
ux/continuous-integration</a>),<br />I noticed that our last build stopped =
on Nov 20, 2020 with a banner<br />that reads:</p><p dir=3D"ltr" style=3D"c=
olor: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma=
', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0"=
>"Builds have been temporarily disabled for public repositories due to<br /=
>a negative credit balance. Please go to the Plan page to replenish<br />yo=
ur credit balance or alter your Consume paid credits for OSS<br />setting."=
</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unico=
de', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-=
height: 22px; margin: 15px 0">I suspect this is in regards to the blog post=
:<br /><a href=3D"https://blog.travis-ci.com/oss-announcement" target=3D"_b=
lank" rel=3D"nofollow noreferrer">https://blog.travis-ci.com/oss-announceme=
nt</a></p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans=
 Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px;=
 line-height: 22px; margin: 15px 0">On <a href=3D"https://travis-ci.com/org=
anizations/ClangBuiltLinux/plan" target=3D"_blank" rel=3D"nofollow noreferr=
er">https://travis-ci.com/organizations/ClangBuiltLinux/plan</a>, I can see=
<br />"You have used 16090 of 10000 credits; -6090 credits available." The<=
br />toggle for "Consume paid credits for OSS" looks enabled. When I click<=
br />on the "OSS only credits" I see we have 0 credits.</p><p dir=3D"ltr" s=
tyle=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande'=
, 'Tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin=
: 15px 0">If I understand the note on<br /><a href=3D"https://docs.travis-c=
i.com/user/billing-overview/#credits-vs-oss-only-credits" target=3D"_blank"=
 rel=3D"nofollow noreferrer">https://docs.travis-ci.com/user/billing-overvi=
ew/#credits-vs-oss-only-credits</a><br />correctly, which reads:</p><p dir=
=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Luci=
da Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22=
px; margin: 15px 0">"On occassion, an allotment of OSS Only credits may be =
granted by<br />Travis CI. These credits may be used only for builds over p=
ublic<br />repositories and are meant for open source support. The OSS cred=
its<br />may be assigned as one time pool or renewable pool, subject to cas=
e by<br />case assesment of Travis CI staff."</p><p dir=3D"ltr" style=3D"co=
lor: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma'=
, Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">=
Then it sounds like we need to make a formal request for Travis CI<br />sta=
ff to review our case?</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-fami=
ly: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; =
font-size: 14px; line-height: 22px; margin: 15px 0">For more information on=
 our project, it's performing build+boot tests<br />of the open source Linu=
x kernel via the open source compiler toolchain<br />LLVM, then boot testin=
g the resulting image via the open source<br />machine emulator QEMU using =
the open source Buildroot utility to<br />create minimal userspace images.<=
/p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicod=
e', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-h=
eight: 22px; margin: 15px 0">I am actively working with Linaro to offload t=
he relatively expensive<br />builds to their tuxbuild service; I would stil=
l like to use Travis CI<br />for the github integration and ability to shar=
e hyperlinks to build<br />reports when Travis CI spots regressions (based =
on the number of<br />branches we're testing, Travis CI helps us spot regre=
ssions in the<br />Linux kernel daily).<br />-- <br />Thanks,<br />~Nick De=
saulniers</p></div>                                  </td>        </tr>    =
  </tbody></table>    </td>  </tr></tbody></table></div>
  </div>
  <div style=3D"padding: 10px ; line-height: 18px; font-family: 'Lucida Gra=
nde',Verdana,Arial,sans-serif; font-size: 12px; color: #aaaaaa;&#10;    mar=
gin: 10px 0 14px 0; padding-top: 10px; border-top: 1px solid #eeeeee;">
    This email is a service from Travis CI. Delivered by <a href=3D"https:/=
/www.zendesk.com/support/?utm_campaign=3Dtext&amp;utm_content=3DTravis+CI&a=
mp;utm_medium=3Dpoweredbyzendesk&amp;utm_source=3Demail-notification" style=
=3D"color: black;" target=3D"_blank">Zendesk</a>
  </div>
<span style=3D"color:#FFFFFF" aria-hidden=3D"true">[L7VKGO-M25K]</span><div=
 itemscope=3D"" itemtype=3D"http://schema.org/EmailMessage" style=3D"displa=
y:none">  <div itemprop=3D"action" itemscope=3D"" itemtype=3D"http://schema=
.org/ViewAction">    <link itemprop=3D"url" href=3D"https://support.travis-=
ci.com/hc/requests/23735" />    <meta itemprop=3D"name" content=3D"View tic=
ket" />  </div></div>

</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/L7VKGOM25K_5fd908fd5600d_4b5665bc15886c_sprut%=
40zendesk.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google=
.com/d/msgid/clang-built-linux/L7VKGOM25K_5fd908fd5600d_4b5665bc15886c_spru=
t%40zendesk.com</a>.<br />

----==_mimepart_5fd908fd9df88_4b5665bc158917--
