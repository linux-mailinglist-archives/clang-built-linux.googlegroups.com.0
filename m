Return-Path: <clang-built-linux+bncBCMJ3JUZ64FBBI4G4T5QKGQECGMRQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9897228274C
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 01:03:00 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id m203sf3834415qke.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 16:03:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601766179; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/4/RdgfspshJ7RC+xAvVNt2ceWJVovtbNHK2bVgvyiFKpz7yp22uz5m7nHsp8ZMiG
         uiaIc34Yengr/8lw+/CpamHyxSqVb0T3qqp37sEwNoG+K6QcFTc5BboXqmFH159UfcXu
         xz2QlxOph08Sa/8ZXh2GwrQSxQJ/6V2eGINUK0+N5zx1srKm4GrKdEQIJeEuoKjaLzdn
         gDlFfvo+RBqMTNitZgK2GlHW2WmeFf0k3S5QCp7ZnQnsU/Qm+o71Cj140TxfxtoRoGx7
         9jtyu9GAh+QaIQb5gKf3MTZqrONdU05dlSr3Gd9zmRcP5E2lpBXTnLiUXaspGtdQ3zfh
         uV3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=B+jxncDn8PjcOerh7BfxdRssNy/1gwQksj36LhVY5+o=;
        b=v/3YKrHlKTdymymEpMGuqj38G7SA3nn8hxi25rOLRxWkq1KtUX+nBG+Jxba0uC97rz
         dos4nAK9Jdlis7RTzN/SpqU04ix/jTG6f6iF5dX+BHOmmyOPmGNrT1wMrUSA+IQVcx8n
         YqnrHJkAEVqK+wvzfUpIg49qfM5hf3iOlkPLdEWMOWATqJyi5KHP8fQWG4lI4VJ+7fDl
         8/+pHHLstCWXhQhU8LVDOH0ok//gXSTndwUwH0yK2xNAnjwxIiOP8JCgPmJ6sDiHl4xG
         6fH6bIcQORuU/bGkHyrlfeoHIfnJ5iamvMvgEPPYbMk2wbu8WQD2vKxIhHibqIlcKyJt
         6nsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=urUFWaUb;
       spf=pass (google.com: domain of suzzannajud@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=suzzannajud@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B+jxncDn8PjcOerh7BfxdRssNy/1gwQksj36LhVY5+o=;
        b=WnNsbgUNwoRx7GhPfdP3QMCnAXDQMqn8JV3ta8a9BRV0PcVTHgB7Q8suXjpWgvkCeR
         FIoOfAAZsFEbk9kFZ23aikkAjizXmXIxiXwAKIPfnxqUs+NNeuBDbvIH1QRXDYkPCPST
         OXDa5b3c3EDwa1MJuPXfkp4UjkuPabxuYtrSVxqAmqQRKKL6STQZprIr1Oqyquhq4LuF
         FcXDHiLQ5+66WkqM8zliqg31qYZh9q6/S82FuaF/uxWZlfu+CWX8IoyxP0v8193qm5ss
         A1VTtVDwYSGlhU7ZEHjmOHZbWJYAzdKx/ugyxUmLqs6Lvz/YCi3X6w1SlQ2JEkaRWVsI
         dMdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B+jxncDn8PjcOerh7BfxdRssNy/1gwQksj36LhVY5+o=;
        b=gbo3NWXWZADZW7+mS7Cn5282baswSZhvBMH4ihu+bIsLI+WWY87Sfk7P5ZjoiqTtQ8
         qiJ7M8v3E0AzNj0JLAohpacTH8ER+vw2gnU77QCRLCwaIgFjkWamaaNTRPlRFh8xcPig
         DVId92n6NaDiiiir9TNoiriFIbAnnawrJEUgGBgTJRzZXbgxIyThciZFuaM+5M35qB4e
         isATcZhCtblosW2+qyui/7wiKiGxhUUovtfKgbG1jZu3lVU10jkjBn11e52l5OGKcRRm
         Bs+DCdlbzP1Uk7gkowEVtYjE89wAObQKokFaVVAUfQiuFIsHo83zTPyB0iZVjSM/h92x
         uInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B+jxncDn8PjcOerh7BfxdRssNy/1gwQksj36LhVY5+o=;
        b=DCP38m7FYranv7fJtuXaeOaKxQ7aX+Nf+7GUoA8fgTKTr1t2D44keAhOhHXvwunFYg
         ZzW6k2jRJ3A0wBSioEnTDPx7X1GcF5babKIJIDQRiRMYdd2tMrEa51jEgIIE2w1n/YK6
         41OYJpbcQZl5sRElplIRO8w4h6ElPY08rY253s46JyB1x8jC4/JPb0KT8XCRschzXbgy
         LELz6+vw2wpLdP7z/HM7yf/VmAhtINd0Fd1i5TRQMgIi0YIcR9cQ1tsKzA2dPJXJC7jx
         M2fBxuCAwS/eNtoUZZxaBs/Oj362v2jRfvtuwMeLKiThFQr8kcjKKfQNA4VmsUFFUio/
         uCGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328DR5Ap2KnGCj426uFRqwm4ucktsxmkRHqcOeX7scshrGhZ1i3
	EmZcS6b7G+SYSoJ14io0tCA=
X-Google-Smtp-Source: ABdhPJwQ6KiwHIizXCf5P4Z60Fk+AGvyFjEjMdxhT95rOQB/79YdAHRvorSFrV+kzAeJE0Lvk2l8mw==
X-Received: by 2002:a05:620a:65a:: with SMTP id a26mr7957888qka.424.1601766179487;
        Sat, 03 Oct 2020 16:02:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:585:: with SMTP id 127ls2600803qkf.8.gmail; Sat, 03 Oct
 2020 16:02:59 -0700 (PDT)
X-Received: by 2002:a37:a80e:: with SMTP id r14mr8668789qke.85.1601766179067;
        Sat, 03 Oct 2020 16:02:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601766179; cv=none;
        d=google.com; s=arc-20160816;
        b=w19hYyx8zUQAfFhjdBDYfnQBPGwbsRNa3NKYYFfAojZssLvKoeiM3UimSgjA98EJGV
         rtMc8k+Boy6b5U/uZAVjqgE0gT5euRKbxp3bZzavcVp4D4MbpB7tre26mep2xN5LZENp
         0ufxEKijLapxSaIpKI28I7KijetZKULTTVFM9KeiD131fKXqEmeg7YmY260kc5N2NVC+
         Ljk6l/suJdh76HE2GS592kvnzA8HHll9NrUmy1XcVonC7a7EhVXj2XTq5S9wroOxCabk
         oLo/AL3CQB50pHQhlIEht/ke/0cwUbuBXT5kWXNvno1cp1eKgKWgR7dfAcDgqY5OdzKQ
         RS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=w537PN3LcMAg87C1Q+evS90TV42iTtOcmbPRCz9e6vw=;
        b=dZTBz83Nn1vVCrbK9LvWZEI+D3UOM+Dnzz8Spah/KkDa8u56y224fgFuNvXJxd4peW
         jFV++IvME7tzVIy2JfPe3XH5cf8DWpkNItETyRIM+HwvFDeC3rdMlJHQpR+o4G9t2KgZ
         Qxz//apCiKKu4YtkOvI6sekLQaPWVgIDyd4DgYi3LvkT0wXb2xcPgLQCJti51TTrUuTm
         uCPv0ZMD2SNetnVqVSLRqSDM8kWWrdg18/TcQCTK+Qqw/IV4Sywqwz8nrGZUjm93eICy
         PYT1+h9Ib1Vn1nq26YY/xE/vpa83/TxvBMFVHIOxWhW0gBNNW/X38Js8uoKnVvKso7Vy
         0p+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=urUFWaUb;
       spf=pass (google.com: domain of suzzannajud@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=suzzannajud@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a2si285816qkl.4.2020.10.03.16.02.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 16:02:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of suzzannajud@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t14so3308201pgl.10
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 16:02:59 -0700 (PDT)
X-Received: by 2002:a62:d44e:0:b029:13c:1611:652f with SMTP id
 u14-20020a62d44e0000b029013c1611652fmr9490831pfl.15.1601766178237; Sat, 03
 Oct 2020 16:02:58 -0700 (PDT)
MIME-Version: 1.0
Reply-To: lubnaalqa@zohomail.eu
From: Lubna Binti  Al Qasimi <suzzannajud@gmail.com>
Date: Sun, 4 Oct 2020 07:02:46 +0800
Message-ID: <CAM4QSR3TRiznzOyVQbaQ4zg4XK8EU_Y4YB_QTggcjdVyQHoR0g@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000112f9705b0cc40cd"
X-Original-Sender: suzzannajud@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=urUFWaUb;       spf=pass
 (google.com: domain of suzzannajud@gmail.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=suzzannajud@gmail.com;       dmarc=pass
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

--000000000000112f9705b0cc40cd
Content-Type: text/plain; charset="UTF-8"

Peace be upon you. I am Sheikha Lubna from the UAE. I would like to talk to
you about a charity project in your country. please respond for more
details.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAM4QSR3TRiznzOyVQbaQ4zg4XK8EU_Y4YB_QTggcjdVyQHoR0g%40mail.gmail.com.

--000000000000112f9705b0cc40cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Peace be upon you. I am Sheikha Lubna fro=
m the UAE. I would like to talk to you about a charity project in your coun=
try. please respond for more details.<div class=3D"gmail-yj6qo"></div><div =
class=3D"gmail-adL"></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAM4QSR3TRiznzOyVQbaQ4zg4XK8EU_Y4YB_QTggcjdVyQ=
HoR0g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAM4QSR3TRiznzOyVQbaQ4zg4XK8EU_Y4YB=
_QTggcjdVyQHoR0g%40mail.gmail.com</a>.<br />

--000000000000112f9705b0cc40cd--
