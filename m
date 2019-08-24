Return-Path: <clang-built-linux+bncBAABBU7MQXVQKGQE5JKPJWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9859BF04
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 19:39:33 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y5sf7762830plt.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 10:39:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566668372; cv=pass;
        d=google.com; s=arc-20160816;
        b=IrOSmlyzOihIGBUBisfs5zMV342NzAQCpeAbjRICwC9g0yEUpWeZobrhKCPzrYwOjS
         I+MYXu6ZaXQTfMH3pOC1XUCcIYopO2/gjzVkg1ri2jUGPs+EV8OVyNJD5WDJ210rQZMu
         J20XodnM4FgF5moiNBIxoCzOFLdreRsyGPIywHuIvqXFqCMg0q5j0AvJCRiWvEXXUiBI
         gU66TXhxrXPhVeMqqORt4rvx9cLObp/p50QTjt9ICeRRtLjcVUvqSwb+1fISJ9O9bbFs
         LzmAtOYJDp63PKDclM6onwpHzrDcwNvovLtdRwS2S9R1H0IrbIm9/8qka3mwPP6BGoXG
         2BYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:mime-version:subject
         :message-id:reply-to:from:date:dkim-signature;
        bh=i2MGrndy8VcY+Q5y14WSuMyL8GTl4Z9n1+MXVMsJK0M=;
        b=I7w/SP03+C8SZHZsWcyJJeI72xbR8iqqwPicW1m+N/LEzPJTX+eKT+Sy+N/EeCvxl+
         lbnG6ayI9o1rXQeESpaqtk2bOIROWhu6JNxpGVvcDKEGj12QfvFJ7JRcyCIj3CKlHXQp
         MGEeVbW6aVd7uN6xK6Sc3JRlxCj35qdfUZZ/GfFl0RcR+nOOf3xhzARc2zzIDPPwq9PN
         kERjYkIkCiimcwJMw/rgYvI50en31v+i3Kyn45jRpZph6JAW8c5C8Tjo1B/7Pv6LgYYL
         t99zjiTIiTWtQqPV8GA7K4X2BGhdkcS5wP0kVoZ+L+8vAz8SkOeAcAoIJ/HmPTnBdb/5
         iWLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=CRpZKAyG;
       spf=pass (google.com: domain of blessedproject12@yahoo.com designates 66.163.185.32 as permitted sender) smtp.mailfrom=blessedproject12@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:reply-to:message-id:subject:mime-version:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i2MGrndy8VcY+Q5y14WSuMyL8GTl4Z9n1+MXVMsJK0M=;
        b=bEwyxC1GkcnQjQGoMNr6X9LJtbXK8tV8RlhiGDpvjNcEiBOrPsxNzV/1gTtjas8PPq
         zDt6bJ4gTo3atxy7E4vP+S8PCEaMEbW2GykqZh48sXDnXvpz7ZHXPSSOj2l53xNAnNTk
         IH4iX8IhmsTTcvMQgU8+0ZsVJmucfyCRmppvsEgyqH2yhkOuFl44KhmgAdbkrnO7siuu
         gqV8iX/9TnEO/a1YXfOHy/Q8jju00vIPT/6U54eBW+o/9UV3WrhV2SvysHZ+8SpIIo9D
         jIaBtmiLPTMutM1SM4y0pzog6sFMeWhH1OjEISzt/QwlVFrCnCWkGN0jFcbFvK0u6ZlF
         vBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:reply-to:message-id:subject
         :mime-version:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i2MGrndy8VcY+Q5y14WSuMyL8GTl4Z9n1+MXVMsJK0M=;
        b=RsGZbdERX1QCUnBDl6pDgRQPTbXJpmeCmJma9bCTPtNcK+Q7dFy09DyzJdDttd54mG
         LrQT/T+8yYtGwXWXVKTvD+StQu42EY9+5mH+lWDmuf9dC3On+PJPEOHRIwIWM613PY6a
         jJKukiZBKrdCphbz9r37lFHa80AmclBNZs23LMeHPl3CwVyzfxGX2sFLBW+ZrdmALi20
         52l45js7PeLKvxOihubTsuEPfSnxPC9Nhd8/Iw3dev3MMcHPyC7FLmaH6QTw3KwT0X6E
         sQ8h+FwLSbwhR6g42y3IPdbfTcdlX/WmIM+sjcB85dLcyHU9w4svTPhI+egDTSct7gaf
         Itzg==
X-Gm-Message-State: APjAAAX1veyIN0EiK+XKJGPr44Wb+4N0hmousOybCAMpJA1UW4dzg5aa
	Be5kA0/2JVkE75YEYfTY0to=
X-Google-Smtp-Source: APXvYqx6ogttCy/MetxITrmOOcwBdHNVyAIVMtUnHkJuGfoV7XYh93CzQqmz9bBscM5orj7kM4rIyA==
X-Received: by 2002:aa7:914e:: with SMTP id 14mr11650580pfi.136.1566668371945;
        Sat, 24 Aug 2019 10:39:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc15:: with SMTP id j21ls2537555pgi.9.gmail; Sat, 24 Aug
 2019 10:39:31 -0700 (PDT)
X-Received: by 2002:a62:2603:: with SMTP id m3mr12035969pfm.163.1566668371749;
        Sat, 24 Aug 2019 10:39:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566668371; cv=none;
        d=google.com; s=arc-20160816;
        b=QGZzYCqUL+8NC3BxVtpCxgts4lZDAZ060wdbR2kSufMIi6El5/Hrfw1z6gHebkiWZ+
         vXxQ5Q6rSdq/hWza09/ELGKJNKUm3jmkxHQDh6vqHRl5MnHM9nRcxT7vtnyckPU1shr2
         wCGC62SxyZ47Qfldiy+LNGUENj3rTltkuXyNSR7tQv+yR8PB0KLtKd/iNdLlhO5zTLx6
         FkkhawyH8vIo74v2DmxP1dxGBY8wTril9rzKy+5IUZiYIJ5XV/aZayjSs33K6L3AHFp9
         164MyTDizMNAu18HfEuxSppBMGrDfX3hvBntdC8skyYof4BR0+FgX4+9+i2MR4WwUmIW
         tKEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:mime-version:subject:message-id:reply-to:from:date
         :dkim-signature;
        bh=3FgNCR0xtcG61hkXtSkB7x1eTM6S3SA5gSXTlUNlKx4=;
        b=0XHFRGrYos2S7QFGPwnqwFQWyylRGHyW7MZnPaXAFpuL82+UaxQBPflPnyos8eZ78u
         Yl/DiuO0ZBZy6kvJtT6WYJD6dzm0cyNO5YkvwwiCtGj4fUo9ZPkRDM7P5cCiCg6Ke1fl
         6oYvH9gUFW7aSAcuPkQvhfVyxQPPAooIpVYk/iiaCjWdt8eyq1jbKvC0hmGwru/N+S8/
         nCTd0tuWNCYbddj+qPRIwhUIdbvA3o72nTIlvwULrzFFcyV1avT5amKmHp2YVU7HdiOB
         afwerOxXkPOPe4MLN9W94i+MUNPOhkRrEqsmzv+zKYCPZmpiM3hQ6KbfPmV8GGfeSD0F
         LhAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=CRpZKAyG;
       spf=pass (google.com: domain of blessedproject12@yahoo.com designates 66.163.185.32 as permitted sender) smtp.mailfrom=blessedproject12@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic313-9.consmr.mail.ne1.yahoo.com (sonic313-9.consmr.mail.ne1.yahoo.com. [66.163.185.32])
        by gmr-mx.google.com with ESMTPS id z9si746751pjp.0.2019.08.24.10.39.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Aug 2019 10:39:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of blessedproject12@yahoo.com designates 66.163.185.32 as permitted sender) client-ip=66.163.185.32;
X-YMail-OSG: V6ttXtIVM1kwPPEjSkM1E1alDBvBYhAigZGM7XQp2NOxywDv7Ql3Zmx6gQz26Yl
 aSjh.fX1BeVdbiVy4i4N4hU0hpWTcLXGEe79EnBpTWXmP3wpHno6lEUwIhR32iXTj2xeoztGHpcU
 Wpu5NbRHYfB6dlkOP6zD3w._BjuQT6yrDC.uQGnbmr8ax0BZSKYAEtHA469FOhnQ0og_1vL71MWh
 R22YwYI9r32cwnGp0114MRw1fE3a.mNuF0rSniRHz91nRquelV1daK_KpqUun5rb8dNLZMq6k4zj
 Tpw3GyWkPJbPuNqeN3xInuDZFzWLgTUlEuEMFMOvcOckgg8Ln1R3Q.yCW_4mILBjkm7Xq228f_z6
 uNafQWBz2HhiFs8QKC424A8_uKkNFhgVKh2g24lcCS2B3y4Mf7ru3oAo92rZ1O.I5LAsIVz8F2wf
 3DGa24xnE3YXiD4P72dO57SDeIZURISaV2uPJ7W02Fje.PY8fK1_1TOf0VNk9Oyg8Ut0b3mPZc8G
 Sa5r1oRoHquyRqcRuILVYEHxyZSW1dS0Jgs0qFuVM4JE8WsIyB167bS1n4tTxYucYBpGr2Fq6.tH
 1ZZiQMaefsWB95U7685Bsy44LA_3nVEZ.GExBYCZwH6HZxmxuXTcWtlK5KrQzrSyR3BzMsAYRWJB
 iiZaSEqF6VkzgpVz2kzZsDqSITfg6wTRFM_YyzslhBieshnXruyg_G8WisMSx5MiAQVmjvGUBsr8
 HwbzZTG_LUiwP6R3q1XzyboJLV38dCoa0ZeXjQGKU1_GgU1Mf0S3yFXQL43c1o3LqLS6cD7bR8_j
 WYOhHumhGp4mTLvL6Lq04aT.kv6FgpTAZOD8eBNuY9mrbkeOWwzomTfpBB2koC3s04RLJ9Nk6q9M
 llOnO8_9sCkohpn4eFcM3iijavaqSJf41aQ3xJm27l1TnT_K4uK6iRYHXab6sxhL9uHCxwkNe68t
 cP4XM4cMOvRMnovRRI09WbsvIcOf8nvyR85DfpJ.S5e8egXvbq9H6gU_sdUsUYdxqiKpiAbF4WDe
 7Ia7ayFtyxUOoe1FWt0JrGFi5WimLzsiEY_S4QCUxeHg87WhHUQCAMwV_fkHo_UWpTGLMuTWULWZ
 mwzPYlhzruRRHXdmy8bzpsrQcgAtv9Jn06UegazujxBYJwROiaQFUP5avnf4PAlTnGcbel7K.cvC
 NiX92dzK5_CgN3mh4W701K5voe2e9BDDODkGTqGErzSl8Y9fSekLnuVkYbC1ACeBHJae6xoo-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ne1.yahoo.com with HTTP; Sat, 24 Aug 2019 17:39:31 +0000
Date: Sat, 24 Aug 2019 17:39:26 +0000 (UTC)
From: "'blessed project' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Reply-To: blessed project <blessedproject51@yahoo.com>
Message-ID: <1472518005.2382309.1566668366188@mail.yahoo.com>
Subject: hello
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2382308_1524579874.1566668366187"
References: <1472518005.2382309.1566668366188.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14219 YMailNorrin Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36
X-Original-Sender: blessedproject12@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=CRpZKAyG;       spf=pass
 (google.com: domain of blessedproject12@yahoo.com designates 66.163.185.32 as
 permitted sender) smtp.mailfrom=blessedproject12@yahoo.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: blessed project <blessedproject12@yahoo.com>
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

------=_Part_2382308_1524579874.1566668366187
Content-Type: text/plain; charset="UTF-8"




Greetings

I am Blessed project i have something important i will like to discuss with you ,
Please reply me as soon as possible,
please do not ignore this message;

Thanks
Blessed

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1472518005.2382309.1566668366188%40mail.yahoo.com.

------=_Part_2382308_1524579874.1566668366187
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpcd5d50f6yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div><div><br></div><div><br></div><div class=3D"ydpcd5d50f6signature"><=
br>Greetings<br><br>I am Blessed project i have something important i will =
like to discuss with you ,<br>Please reply me as soon as possible,<br>pleas=
e do not ignore this message;<br><br>Thanks<br>Blessed</div></div></div></b=
ody></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/1472518005.2382309.1566668366188%40mail.yahoo.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/clang-built-linux/1472518005.2382309.1566668366188%40mail.yahoo.com</a>.=
<br />

------=_Part_2382308_1524579874.1566668366187--
