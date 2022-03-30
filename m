Return-Path: <clang-built-linux+bncBDM7RQV2QAERB253SCJAMGQEPEW64OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E134EBD3B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Mar 2022 11:07:57 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id w14-20020a1709027b8e00b0015386056d2bsf8479892pll.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Mar 2022 02:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648631275; cv=pass;
        d=google.com; s=arc-20160816;
        b=kSwebI50Zb7lPIfibTk2S7Th1EgukFEuOvNTf8B8gv4iS1jlhZS0mR95rSPRznRHWm
         Pwr7Nu5XnG1o2CrK9nO0V9OvIRfLEKhbxuY8+yWhVoT6IUZqV5AQOcUTZQ5LDUkocGhb
         ykOE9cMyZuuyIRRk/FVqE1dnJCdyFD2xXVojBSa0tGG+NTsnRFv2GIydV1xPFFRdz8yo
         b/IeiASYqdotBH0Ym39FFuzVaQYQOWQET9z2J8zi72KpNiX/v1JzImNjIY+uLbQJpZVN
         VTpx22vUd0tGAeVnrKVhgowciFrNut2saZwcTK2he4wm7XX3HP5eVp4OityKfmh5g6PC
         YxBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=gWO6s0iDDmOjUDGaVdzj5pOiNX7kvGBAI6lGfBjWNrE=;
        b=xFqen0oqWxYZMUlMwlMrmjMrlpR3SRB7Qm1gLp/jt7JuIFhap+rl/nNNtqexPyHiMc
         ZFbigMXN9BYeGI1g32E9Y0wMwLdYObAISTXPin64syYZCoQMpdUQUvtRNrA9xdduA/Kk
         POKJ6t6bq2uf3dco8uE/+xuisPcBu5rHqTYrk5r9fY/2mOfrlk3x6U98AEvZ3rtQ8nvq
         S/6Y7kA2FqLQwRa6ZQy/Ka+0BVBgKCdq5ztgpNsihhPUDu0RiuZdKpW93f1TlXbuQkrg
         yajdEnHUU6B1qJV5/8m4b94htiTeaYZENlI1qQQNNYIhyOq1HpO1G+xRBK+OEfU3dFpU
         Be1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dj9txpj2;
       spf=pass (google.com: domain of moubarakgoumpougni@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=moubarakgoumpougni@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gWO6s0iDDmOjUDGaVdzj5pOiNX7kvGBAI6lGfBjWNrE=;
        b=Hy8ZoZOo8wKXdxqlj54mIx/Pmg47HKvlTXI26VpfmCfGtycd3LPUAdU0J6eNvGppep
         +06jUeiuiG5kROWylNGpGIkBFUkogMJl6O0DdJVlZn5SlqFSWhwd6WbBpGPzTRRukHnV
         Mn/9rAeTCxSMuCU3HI1+kxwAuobDu6nQkxW/APuFh+EQr/Q7F/D/ObmM1tW45So+r+sT
         08jgT0sX8YIYA0C0djtEyYZohYvMWZo3XFFKSYtiikidwgSUc9pk6XfEL4GbqH0TSFRE
         JAuTvGyxVHyaV+QUBZr0gvdKL7sjvJ1rWWEg/n8lB/LIXtO96QyaQTq4QpA20SKXbbCs
         Qt1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gWO6s0iDDmOjUDGaVdzj5pOiNX7kvGBAI6lGfBjWNrE=;
        b=nM3EzswQlf869pqK1hUCWyzsDdGtxvhxKOUf45y5N/dHyiJ/8hTTLtrGazRpjEJMJu
         XcYVZrK8k3PDOvczKtY7i9WRwZuQUM6yVSdZaG9pqCebPqRngHZe8ogAJJpDQIJ+21eH
         VzgmCvpolQF+4BzaOngb4OckNuIFLfb3jdQ98pHrf//swdO+T7qdPEpet3+nTjF2eC2R
         XXvNPN0RvpGsOT+AMkFz2jj+79N6pMBT4X+QQnd1EBQF5Xyn8ZCuTevcD4z4LHrCaKoT
         7Dj5N5hyy/g+H/vyyL72FNDDHw3NkR1gu2VsDyYVeORbXQXfhAfEPKs24yKPm4L/VBT4
         ET0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gWO6s0iDDmOjUDGaVdzj5pOiNX7kvGBAI6lGfBjWNrE=;
        b=FZ8WrzJx8Ym2YOabATU2HGnwSgh52zhiZO99v3NR7ThIRgDn4fgA3UeHLzc81tnW0e
         JSozvy7n//m8DWTJwo6oGXI+niIUNLia/BnD1Jxsbqd2UrnPMcnwitqZwXcp3hna/5Qp
         VH9180kwp4/SfhmefVx3DDpdAI0W5wpHQiBHVjK5gghR9ZogLOdq2ZK8rj86zwC9B03F
         GNDchz72XNOEl3yMVDdDRqk9fUjdKLFSDKixXgOC0SwNknzcc6p1ozx7FgQj7F9bqd+1
         hs8H5qQ4MWlbDwWoerygei+XoIgKuTJ9XtrH26XxszfdLOZmGTK6KBndILP69AGfmb2J
         j5kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Xxqi7p5lk8DksEKcXmYtSTHqO2kBjZEXLBuR6IBV/ti5yHDuW
	YXiZLB+uDidjC37etudMD7M=
X-Google-Smtp-Source: ABdhPJypnpjEXm+IlgkJ7nqmKVLKL8hGcvt1LXdn1RkayfAnjNveTf+6r80cDRMAXPsRRQ3XvGDAvQ==
X-Received: by 2002:a17:90a:8405:b0:1bc:d521:b2c9 with SMTP id j5-20020a17090a840500b001bcd521b2c9mr3860716pjn.119.1648631275321;
        Wed, 30 Mar 2022 02:07:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6782:b0:1b9:7c8a:8c03 with SMTP id
 o2-20020a17090a678200b001b97c8a8c03ls1420322pjj.0.gmail; Wed, 30 Mar 2022
 02:07:54 -0700 (PDT)
X-Received: by 2002:a17:903:2343:b0:154:4a3e:6b24 with SMTP id c3-20020a170903234300b001544a3e6b24mr34821985plh.129.1648631274588;
        Wed, 30 Mar 2022 02:07:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648631274; cv=none;
        d=google.com; s=arc-20160816;
        b=dtcVFCqxqfkEnigqb/8eIydW92LLZFZndDxyxmnAy8xDW/1bi5+i3FGKymlnfKDqvA
         osZFESnU2rTitnkmc815JqjWvMEzrtMu4Qp+WDp57Ml6VUP9fWwI/ss+XTWu7RiA5hyI
         VOlTBiKy1QiRP2LzWUPGqFuAdK3k7ryEK2Yyyy7FCwtiVlVOnVx0ze7ut1etQhqtjJkN
         n//tOhWdn0epiTjlRmCohYRF5QOQB0z2HWe421yXMwGzYjbmuhxzjtv7k7NMLVLQzMHT
         +zl4/fM5hAS5N18WSaU85S64sYKmK7D5MlxkjI8k3RFHBmXxWOH1EYwopHC8PETEdJwN
         aaMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=8zWdcOH5gWKh8i6XJY7PBPxPWyZXg/UJrRz1BS7N/gU=;
        b=s4FBlzqXSRX5skbyeWbu4lJY+/q/2WyVh/2OtSSGZiX3PhF4GzFxdJSNzK1GtZQssa
         NA2q5KKyHwUCcDbIc+aHDZrI8x/PZRS5pcj3WKCNtH53lV8YXzS3IUkrTQlL8Y2BkVkf
         xwh2P0ZaydBVNOEB6TyiinmT+fLym+vAm2WGbwBbY5XwuakXVi0SCvAXNQ7Afq2QjAgU
         hKc1gwoLLju2bFtDqWbfnWf8tOcgLFwGc3eSs3Sp6E0d2E27AfUHtE5gaOKEYzdOfF2K
         D6azO3/b7D6sycTtJ5emtrGhVXEAwHMFk20jxU3avoPO2oq5QuuA/BcyRWvS2BbVoVDl
         L5EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dj9txpj2;
       spf=pass (google.com: domain of moubarakgoumpougni@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=moubarakgoumpougni@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id z13-20020a17090a1fcd00b001c7a31f2a4fsi75415pjz.1.2022.03.30.02.07.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 02:07:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of moubarakgoumpougni@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id v35so35850386ybi.10
        for <clang-built-linux@googlegroups.com>; Wed, 30 Mar 2022 02:07:54 -0700 (PDT)
X-Received: by 2002:a05:6902:10c2:b0:63c:945b:2d6f with SMTP id
 w2-20020a05690210c200b0063c945b2d6fmr19159787ybu.526.1648631274315; Wed, 30
 Mar 2022 02:07:54 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Riterhouse <sarahriterhouse89@gmail.com>
Date: Wed, 30 Mar 2022 09:07:35 +0000
Message-ID: <CA+u5MaFxi12K+wFkxScOVjDo+fpyJrSRh5pmZSZnHPRS14FmkA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000078a35305db6be17e"
X-Original-Sender: sarahriterhouse89@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Dj9txpj2;       spf=pass
 (google.com: domain of moubarakgoumpougni@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=moubarakgoumpougni@gmail.com;
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

--00000000000078a35305db6be17e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E6=82=A8=E5=A5=BD=EF=BC=8C=E8=AF=B7=E7=A1=AE=E8=AE=A4=E6=AD=A4=E9=82=AE=E4=
=BB=B6=E6=98=AF=E5=90=A6=E5=A4=84=E4=BA=8E=E6=B4=BB=E5=8A=A8=E7=8A=B6=E6=80=
=81=E3=80=82

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2Bu5MaFxi12K%2BwFkxScOVjDo%2BfpyJrSRh5pmZSZnHPRS14FmkA=
%40mail.gmail.com.

--00000000000078a35305db6be17e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E6=82=A8=E5=A5=
=BD=EF=BC=8C=E8=AF=B7=E7=A1=AE=E8=AE=A4=E6=AD=A4=E9=82=AE=E4=BB=B6=E6=98=AF=
=E5=90=A6=E5=A4=84=E4=BA=8E=E6=B4=BB=E5=8A=A8=E7=8A=B6=E6=80=81=E3=80=82<br=
></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2Bu5MaFxi12K%2BwFkxScOVjDo%2BfpyJrSRh5pmZSZ=
nHPRS14FmkA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2Bu5MaFxi12K%2BwFkxScOVjDo=
%2BfpyJrSRh5pmZSZnHPRS14FmkA%40mail.gmail.com</a>.<br />

--00000000000078a35305db6be17e--
