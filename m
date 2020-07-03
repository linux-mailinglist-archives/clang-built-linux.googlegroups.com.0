Return-Path: <clang-built-linux+bncBC4L7W46U4GBBRHG7T3QKGQE4UFP3YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x54f.google.com (mail-pg1-x54f.google.com [IPv6:2607:f8b0:4864:20::54f])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B19213B08
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 15:31:50 +0200 (CEST)
Received: by mail-pg1-x54f.google.com with SMTP id s8sf5507922pgs.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 06:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593783109; cv=pass;
        d=google.com; s=arc-20160816;
        b=KSaTIpzOQRI9NE5LhiSbPdQ9SA1gtzjoaEWXwvjr6IiLHFtypS5rzpUL9ajYwsDr5z
         ZbLVCosVIMM3UO8LuBSBzKYVyGLAzLQguH9cYPSKONet0LrWgSzFBlRUYqc8hm/R3xZU
         uuTBt9mFMGGCOMzlQWb3OQBBx5ilkScONaU+1VpBIZ/M3e4OUpj0dfRz9XGqffwSfGi6
         ttMo8pa/a5G08CZNHjp/BfgA+xfNco0nE+lEkvS3Zci/JoEQshkq10B2JSZNkKvI4x6L
         NMLqshhnDsxKuRQ6490HDc/wtBChZScB5I+z66SK/XxT25C8rXxW0UxoTul1/4gLA2hE
         2V7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:mime-version:subject
         :message-id:reply-to:from:date:sender:dkim-signature;
        bh=LM1QBa3lS6ejISrm/KfIoZDQp+3V7Zy+fZxdY/ZRA8A=;
        b=SgeM+ARlKpjQedC60ah1sq9bIQ7IwEB0FxeSJe9eG+/1jUrotv0l9M3lYBzIAuHfmw
         1GESbqAeBs5M67KDm1wlVmfwVCEUctdATRAe5ezAb0PMQl3z8iBC9LENcy7nSoqEo8pm
         cOD0os5WGLVbIln0KnG82I1/L61BLe+JiUnhZ9forcN3gVOAN5cODfefkiECcLgHqc4P
         KcZjChAyJrWvhUL0z0+eNpBKvcNpwCDUOzTCEwednwDlKTTxnp8LGUYkd9Szl/bLWNoJ
         Es+tyluKzoDD81+/P3s6EmglyzW6WOq/RSv4G8nktoLePX5lRApn4qU1o7qEu9eY2Grr
         FYXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RAzEgtQY;
       spf=fail (google.com: domain of richard.l.boa.offica@barid.com does not designate 74.6.129.81 as permitted sender) smtp.mailfrom=richard.l.boa.offica@barid.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:reply-to:message-id:subject:mime-version
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LM1QBa3lS6ejISrm/KfIoZDQp+3V7Zy+fZxdY/ZRA8A=;
        b=j0qLumrfMsueMLNZKE6X8Y1zi6xB9PcVD0qA6v9LGP6igmXKUU4AaJGxgudAGc+Yx5
         ShTg3HoSM1E2b45K6JkNgAG172/r5HlerKhcjqakMFnikETqJM4xLDzzqEK99jqW7WUF
         8vFV+70BKQWBSdnvo/I2nbcBlNsS3JLrCnCRXw3m3selDPJmS+nbTHlc8CtQa1wpKOMq
         7F+D0/+aLgxTDgE4wnrW1OPPVVAbWeWV+riTe012uiZUkDAoELUgC2HXRxfR70Vr0ReS
         K1IUNFJquEFcrUuezQDjcwp21XgvtE1Z3fJcYS1hJfjzxzX0aGSYfGXlD231TWDZgTYB
         ShoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:reply-to:message-id:subject
         :mime-version:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LM1QBa3lS6ejISrm/KfIoZDQp+3V7Zy+fZxdY/ZRA8A=;
        b=cA+OpYeCWiluWfpApgQowCiog/VOuLylecsAsjg6PR2p1ipCpMxKw6kn/l0V4KBCkR
         cpGO2fVIR6ZNngMfsDQt+ADRyXxc6ATV8I0j3lurOYktQcdz9rH7HKVYWkoE9ttSeAmW
         yRwx4fVYd9Djcc3sVIrrdU6/byyF66E0rtTkRgYUcmkcQ+dt+kILVzHvJOQm84sZSQJw
         pIlWUDYiM4kBeYffW+lLuJplbZJ6vojxfDsIHbln4NtfNPu7EEWd3WR6gYoseZZ/xymq
         2LBTTZe5OHLZosRU4c77iHmwVFX5SL5Y1irpC3tsAddmwT7iRPSYEMWgxyMcJfozONHl
         a3Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314rgMMTt7iIk+WEee4PFgCXGFXRjd67DbeQRy7sMaWvwXW3Q/w
	C9ZrJl6XwMtqW3EmtSxLyAA=
X-Google-Smtp-Source: ABdhPJw1buW6MQXWYajAgFFKy+QwUJ3QdCQPfLL0+pjGHsPPs1tNWWaB4PVS2JJXBPg7Y5NoQSGggw==
X-Received: by 2002:a17:902:6908:: with SMTP id j8mr30779410plk.124.1593783108948;
        Fri, 03 Jul 2020 06:31:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls3100016pgp.10.gmail; Fri, 03
 Jul 2020 06:31:48 -0700 (PDT)
X-Received: by 2002:a63:4b1d:: with SMTP id y29mr29684987pga.264.1593783108595;
        Fri, 03 Jul 2020 06:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593783108; cv=none;
        d=google.com; s=arc-20160816;
        b=ofQPNQ/r8/Z5bbPp/KadopaFDIXtczsJw1gVtU1MuZIsPORecVMRpBe0g2u6YIbsg2
         HLZZ3mlIj/Ii5MM0myyfeSvTp436sPtim8ArnZWRdbRcnIzk0S9bKkZPBAP9NgSuboTr
         ACwy24rEaZ2jajAdL/aon4xRYVoVjpZOndh3mokhL1rhfeZZrv+QSDeawkzXVk1Sprch
         /ANOIBQ0jA6x2BsZjTWnI6dnHxpLSKarqLqPpq9MU8Zr90H0FZv9TvVEd0X8696LwgLF
         1ZaoSf3WaWvXYIFpbveRnG2NDCmE9/Iu8faEkzUhk6VJLGHhfFx0tRrtFXr7qd5V1eFI
         d6jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:mime-version:subject:message-id:reply-to:from:date
         :dkim-signature;
        bh=6dvbpFw4hKJa+86MXbLmy0+NGgPmrViERFQ+a3vHaB8=;
        b=mcuusKegf9XMjlsPbIJTHdNBr9sm5h57/QiYIEOta18desiaXpV9OwbSnOiaonvZ9m
         4ghrmau6+g3PGhSACyeXil2WqOwJ8vBO+YMtRMFplUKfz/o8MJq3TUrRsBXWK2f4Ok2D
         GFdU0N4jd8OG5T1XfsUNp76j4KiXUcchQKA8cXGuV+rwfDthjNx2EiWpFbMgNDBiWK+M
         nGNkfvmrKvdczAevAlimMNyK3QTr8NdNaBH8JmtULI4DzwgX0WznxSsRNLV4mocfc9Hm
         s0iI+HltuJcBKrWI4zVCPA2KCfntJ31Jlyz/wGg134Ez4hMiR1mw4sRvlT0IIbRUya4G
         Kytw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RAzEgtQY;
       spf=fail (google.com: domain of richard.l.boa.offica@barid.com does not designate 74.6.129.81 as permitted sender) smtp.mailfrom=richard.l.boa.offica@barid.com
Received: from sonic317-26.consmr.mail.bf2.yahoo.com (sonic317-26.consmr.mail.bf2.yahoo.com. [74.6.129.81])
        by gmr-mx.google.com with ESMTPS id d16si638616pgk.2.2020.07.03.06.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 06:31:48 -0700 (PDT)
Received-SPF: fail (google.com: domain of richard.l.boa.offica@barid.com does not designate 74.6.129.81 as permitted sender) client-ip=74.6.129.81;
X-YMail-OSG: kwHxVdwVM1kGdEDGXt6Ae85EC3OArOilCJzl7xjkjv4THexpQp_X4OhAD3.YAEw
 6nrN4CpONU3rFdq_zm6cK4KN0Db8ZkqNdOsHfoLilLuvkJLVT5fTOvvtBJlFJ_ldOy.rzjyzV64u
 xPhycQiXxIsasvLCJ3nGSZKAynTFD2UMYWqI_4.lyvFMaM2_4VilMfUjI74MteJaJd_gRUAcanHr
 HRjOdqg4Esba34BIFcVp3Nk6ZRAMBKbHcD70iJCLuBBsnU4bMVN7kvLIty1bnLgbVfVL0SmjuhDD
 pktCQ9unpSHuq6tvbo4Hq2EFESygGWprXoYfsO6rO9JRyD5G8YOuUJtH1I5mlcl4.9.K.fzW9nWT
 1tAAoeUMlacLhGQyG5ZlkguOm7SAGqQCSTTkXW8iGn_AidNWj9AAb0X2J53NBH6o6tvihFj4EzaE
 fyqqethDTidnY1nMqJ5FmUFp1Ul6f.10jr.3lr_w7aSY9wlLG.HB.93i8YheqZ58YDrxG5PrJ30G
 D_anohZ9p8v6MsE7V4U7X9Y0L74t2ScTFKWQHk1BnblSKRyMa5GlbZnUcgWIOmDjTMAPHxz6qvL5
 dxMBLaWQUrntWWxMhfEppqgelaQ7eWc7y7s8IEOeA1j3sigUDl14wm8L4U8Rg1uKjL3SQ70WqY.s
 vUsmhaCR87CgwNJXFlYbh93X_YUhJo.__E4Oq.s4WD6lI11DvRSB4GXeWLyUwnTFBDqRlIThLviz
 AXFKjy7_XfM5NFZGmytBUlkKTu4ZDEuxYfJWinvibenHxye7n4EpJENqPFEHuYWUIW3C9dVjb18X
 FT_i45xw6NisgZh4Y7JqoL9jOg8PJOg5aiUgwqnbYFgtcXUxGQ7GDUi93Ew.Y9HgH7f6q0JhOKqh
 D7g17KJhSsILdKjOfhVQqPN3YC35CGc60zL7K6kU.RFf3DgSOBxvRZNLCoRFijy6sk9mCs8mhkRt
 xFc3ZrGD7DSS6ev4pjbz.opO7X7nEWv1NUjehakN5sCWSJq7_mGBnMS3D1E8khpGTiKSleLXL3TV
 FzV5yayR3q2u2k1mLqDjEKOv.rhyiaI_muv3qVHK1Cr91jI._qsgSfSl8or9yxio8A.f_AnDSFPx
 b_fteNM1n2X6._k4f0VGRut7tL5qP4Ll7GF7qZ9p4k1hWRiBlUMjlrnvYa0N7Ul4W9kNMa1qmpj9
 Isxk3FvJOkUddDd5x8UOlM.kyIN_LJwlKfUuRIAjGZNu59Akye0RTH6UpRXgN6ODhZX_cLhjq8Kg
 Q2b9QYQhHjMCl9Kgv2zaJUSOIr4eMtVlpHLCYz36WCk_lUPwdqmoRgOpMJQ0G0i5JSw8tel3OEQ-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Fri, 3 Jul 2020 13:31:47 +0000
Date: Fri, 3 Jul 2020 13:31:45 +0000 (UTC)
From: "Dr. Chami Alireza" <richard.l.boa.offica@barid.com>
Reply-To: "Dr. Chami Alireza" <chamialirezadr@gmail.com>
Message-ID: <901664606.592298.1593783105356@mail.yahoo.com>
Subject: Your urgent respond is needed immediately.
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_592297_798996761.1593783105354"
References: <901664606.592298.1593783105356.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNorrin Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36
X-Original-Sender: richard.l.boa.offica@barid.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=RAzEgtQY;       spf=fail
 (google.com: domain of richard.l.boa.offica@barid.com does not designate
 74.6.129.81 as permitted sender) smtp.mailfrom=richard.l.boa.offica@barid.com
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

------=_Part_592297_798996761.1593783105354
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings My Dear Friend,

Before I introduce myself, I wish to inform you that this letter is not a h=
oax mail and I urge you to treat it serious.This letter must come to you as=
 a big surprise, but I believe it is only a day that people meet and become=
 great friends and business partners. Please I want you to read this letter=
 very carefully and I must apologize for barging this message into your mai=
l box without any formal introduction due to the urgency and confidentialit=
y of this business and I know that this message will come to you as a surpr=
ise. Please this is not a joke and I will not like you to joke with it ok,W=
ith due respect to your person and much sincerity of purpose, I make this c=
ontact with you as I believe that you can be of great assistance to me. My =
name is Dr. Chami Alireza, from Burkina Faso, West Africa. I work in Bank O=
f Africa (BOA) as telex manager, please see this as a confidential message =
and do not reveal it to another person and let me know whether you can be o=
f assistance regarding my proposal below because it is top secret.

I am about to retire from active Banking service to start a new life but I =
am skeptical to reveal this particular secret to a stranger. You must assur=
e me that everything will be handled confidentially because we are not goin=
g to suffer again in life. It has been 10 years now that most of the greedy=
 African Politicians used our bank to launder money overseas through the he=
lp of their Political advisers. Most of the funds which they transferred ou=
t of the shores of Africa were gold and oil money that was supposed to have=
 been used to develop the continent. Their Political advisers always inflat=
ed the amounts before transferring to foreign accounts, so I also used the =
opportunity to divert part of the funds hence I am aware that there is no o=
fficial trace of how much was transferred as all the accounts used for such=
 transfers were being closed after transfer. I acted as the Bank Officer to=
 most of the politicians and when I discovered that they were using me to s=
ucceed in their greedy act; I also cleaned some of their banking records fr=
om the Bank files and no one cared to ask me because the money was too much=
 for them to control. They laundered over $50.5 Million Dollars during the =
process.

Before I send this message to you, I have already diverted ($50.5 Million D=
ollars) to an escrow account belonging to no one in the bank. The bank is a=
nxious now to know who the beneficiary to the funds is because they have ma=
de a lot of profits with the funds. It is more than Eight years now and mos=
t of the politicians are no longer using our bank to transfer funds oversea=
s. The ($50.5 Million Dollars) has been laying waste in our bank and I don=
=E2=80=99t want to retire from the bank without transferring the funds to a=
 foreign account to enable me share the proceeds with the receiver (a forei=
gner). The money will be shared 60% for me and 40% for you. There is no one=
 coming to ask you about the funds because I secured everything. I only wan=
t you to assist me by providing a reliable bank account where the funds can=
 be transferred.

You are not to face any difficulties or legal implications as I am going to=
 handle the transfer personally. If you are capable of receiving the funds,=
 do let me know immediately to enable me give you a detailed information on=
 what to do. For me, I have not stolen the money from anyone because the ot=
her people that took the whole money did not face any problems. This is my =
chance to grab my own life opportunity but you must keep the details of the=
 funds secret to avoid any leakages as no one in the bank knows about my pl=
ans.Please get back to me if you are interested and capable to handle this =
project, I shall intimate you on what to do when I hear from your confirmat=
ion and acceptance.If you are capable of being my trusted associate, do dec=
lare your consent to me I am looking forward to hear from you immediately f=
or further information.


Thanks with my best regards.
Dr.Chami Alireza.
Telex Manager
Bank Of Africa (BOA)
Burkina Faso.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/901664606.592298.1593783105356%40mail.yahoo.com.

------=_Part_592297_798996761.1593783105354
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div><div>Greetings My Dear Friend,</div><di=
v><br></div><div><br></div><div>Before I introduce myself, I wish to inform=
 you that this letter is not a hoax mail and I urge you to treat it serious=
.This letter must come to you as a big surprise, but I believe it is only a=
 day that people meet and become great friends and business partners. Pleas=
e I want you to read this letter very carefully and I must apologize for ba=
rging this message into your mail box without any formal introduction due t=
o the urgency and confidentiality of this business and I know that this mes=
sage will come to you as a surprise. Please this is not a joke and I will n=
ot like you to joke with it ok,With due respect to your person and much sin=
cerity of purpose, I make this contact with you as I believe that you can b=
e of great assistance to me. My name is Dr. Chami Alireza, from Burkina Fas=
o, West Africa. I work in Bank Of Africa (BOA) as telex manager, please see=
 this as a confidential message and do not reveal it to another person and =
let me know whether you can be of assistance regarding my proposal below be=
cause it is top secret.</div><div><br></div><div><br></div><div>I am about =
to retire from active Banking service to start a new life but I am skeptica=
l to reveal this particular secret to a stranger. You must assure me that e=
verything will be handled confidentially because we are not going to suffer=
 again in life. It has been 10 years now that most of the greedy African Po=
liticians used our bank to launder money overseas through the help of their=
 Political advisers. Most of the funds which they transferred out of the sh=
ores of Africa were gold and oil money that was supposed to have been used =
to develop the continent. Their Political advisers always inflated the amou=
nts before transferring to foreign accounts, so I also used the opportunity=
 to divert part of the funds hence I am aware that there is no official tra=
ce of how much was transferred as all the accounts used for such transfers =
were being closed after transfer. I acted as the Bank Officer to most of th=
e politicians and when I discovered that they were using me to succeed in t=
heir greedy act; I also cleaned some of their banking records from the Bank=
 files and no one cared to ask me because the money was too much for them t=
o control. They laundered over $50.5 Million Dollars during the process.</d=
iv><div><br></div><div><br></div><div>Before I send this message to you, I =
have already diverted ($50.5 Million Dollars) to an escrow account belongin=
g to no one in the bank. The bank is anxious now to know who the beneficiar=
y to the funds is because they have made a lot of profits with the funds. I=
t is more than Eight years now and most of the politicians are no longer us=
ing our bank to transfer funds overseas. The ($50.5 Million Dollars) has be=
en laying waste in our bank and I don=E2=80=99t want to retire from the ban=
k without transferring the funds to a foreign account to enable me share th=
e proceeds with the receiver (a foreigner). The money will be shared 60% fo=
r me and 40% for you. There is no one coming to ask you about the funds bec=
ause I secured everything. I only want you to assist me by providing a reli=
able bank account where the funds can be transferred.</div><div><br></div><=
div><br></div><div>You are not to face any difficulties or legal implicatio=
ns as I am going to handle the transfer personally. If you are capable of r=
eceiving the funds, do let me know immediately to enable me give you a deta=
iled information on what to do. For me, I have not stolen the money from an=
yone because the other people that took the whole money did not face any pr=
oblems. This is my chance to grab my own life opportunity but you must keep=
 the details of the funds secret to avoid any leakages as no one in the ban=
k knows about my plans.Please get back to me if you are interested and capa=
ble to handle this project, I shall intimate you on what to do when I hear =
from your confirmation and acceptance.If you are capable of being my truste=
d associate, do declare your consent to me I am looking forward to hear fro=
m you immediately for further information.</div><div><br></div><div><br></d=
iv><div><br></div><div>Thanks with my best regards.</div><div><br></div><di=
v>Dr.Chami Alireza.</div><div><br></div><div>Telex Manager</div><div><br></=
div><div>Bank Of Africa (BOA)</div><div><br></div><div>Burkina Faso.</div><=
/div><br></div></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/901664606.592298.1593783105356%40mail.yahoo.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/clang-built-linux/901664606.592298.1593783105356%40mail.yahoo.com</a>.<br =
/>

------=_Part_592297_798996761.1593783105354--
