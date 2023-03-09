Return-Path: <clang-built-linux+bncBDOKDS6A5QLBBSEDU6QAMGQECV7X4BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E87B56B22C0
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Mar 2023 12:23:54 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id a9-20020a05651c210900b0028b97d2c493sf499853ljq.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Mar 2023 03:23:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678361033; cv=pass;
        d=google.com; s=arc-20160816;
        b=rH+lO6x3q7wa5CA7F83j0Clu12xUteg9K7NSbWxRCgSYD4YX/mCoVq50/bkPiOWfK6
         wa1xyuNLsf7rBQM10f7jPN8dQTU1kruPHw2vZgXVVgekJ3fvEDYjHy1Wj+cecTn2gX4h
         4GlhEJUNEO37jNic43ZOf68Me7k83KRc+/wRH0m7av7/CsgbFvbwDOEwOe7/kM+B8eRX
         +aSHvdGm/zOJnM5Rfmze4m2vGj587ujgdXHdgS0tWwbPkVnH9VMebRS7Dem5fDKlc2s/
         vk09lvl1RkI0kTSb/PltaatVQWXB600Xaqvn9rq3iNHiefC6JUkxxO1MF++0vWJ7Ciut
         4HJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=aEcEEq1CG9sY+qN7j8IqoGsypgS7Ns4W6ierfPOEieg=;
        b=ScgdTGc+q21BnqZfUwCMib/VvyUXZCiM2pPAbaFlcDokGlIobDaHb+jdQ9GyI6s6Y6
         kFYfnwrxajBtOoM3no3jH8Wwt0aO2g1+n/qzxAtKttXapc4uthFS/OYDM+nS5Bw6qL94
         IiP9r/7L6QtBOgmt8cqKXzWfMCPobtnZpEhnd4AXr8LtWcVt0YvyPEQGKF4cbHOqMNM3
         7bS11fF7JGQczmZQz4o97nSjLhW2FcclQ+a1wzvBLkqMLlftjfsnHlGo3QbShF7z2RRo
         R+m6Pmbsw4vYKhnqd3ce+22T0qDEU6p+mQGpFYfHtFAgSe9C1ExsJJpYO0xnLoNl7mY8
         fg7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=iGEyKsaJ;
       spf=pass (google.com: domain of sabourousira@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=sabourousira@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678361033;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=aEcEEq1CG9sY+qN7j8IqoGsypgS7Ns4W6ierfPOEieg=;
        b=MFi5izLcnosCvk+/SFn5Q8OpXaO45fcfSwmk9O2viy0VAqUGNqLBaVaEyks3pHD7I9
         8y6UAPz1wzni3xcjfu7qhIPeKHGSn3xRMUjcRXPfviD7d78yFvkOEZM825bUdTn8GT9r
         VrwSzIyttZiSTq0WznYCBTmWGr+pwjO+xBEb9b7cRq/IY7lSg0q630gNHTpZZMheF8IX
         9PQwe4e2TnMoJWokTkr0k8+hPAqwtNGt059nSh9K02S6R/pICm1g7gV2c9Gjcj7jKNu3
         UJiTv2oC8CAoQI0G2qVSrr0DnlNm/5Vi9sHY4YI+TK5Csgq7lIe60sUjbET+A30/WZge
         N5XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678361033;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aEcEEq1CG9sY+qN7j8IqoGsypgS7Ns4W6ierfPOEieg=;
        b=pjDHKVVrQvUZeJaqhn4uteN+JQERjl6eZ5R2X4nDMYrh+bsZaRaAjGhM/Q0+KCjWTt
         H0ekRslTHzF/fSTHdim0TvUUZxg38S9S7WQBsXf72D17fUsBn9FiWOZ3S5iPgLr0nRBT
         VuTbbTaHZzp/AhXzKxh/NHz94FoJFkPz4yEKLO3P4c7ZHHoBvXnFkJIVjkwjSaKEgODh
         uB4jgFE/izW37xkWHfNMAJsN+iLme/ECWXUn7zxKqb8kNhv7PULRK73RycPuDpkFhkuR
         Zexb40ES6+7GcYGtC9oqhgb97hYGX0iTqi+w1ksBza8I8VxFqDVP91LP9d57YrCkB7+/
         khUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678361033;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aEcEEq1CG9sY+qN7j8IqoGsypgS7Ns4W6ierfPOEieg=;
        b=Q0jndNrp4kUGd9RhqzWcjPm9AbdYfnxBc+LEK+ZbDvlHLExNIaqOWqNTPJ7STqoTR2
         b5tB7CzJ/pKtJLT9xm2BXwV8GMmexXQQcai1wUj6Eluz1s6ngcGch2TA8snY513tTBp1
         /a+OY5DlDi4MUP/97oVHjuxPkjD+0oWIMEpRC1gP0cFYLDTOb2aosYmD25LwDnMDlJKg
         ctW3mLHfZWUpQ8mgw8EEONX1xjb1HNnJNr+2UYA6uIW4P4tFLI7tiK/yCXgfixikJcZH
         53o3xQ7S4ggSesnFCZGMbEp6mIIFUA6ne3o8PJgiL0gnUJAnxeptHEPAxuM9gnJXU6eV
         EC7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKVe0nsOoDBgb9sfnlOOKjlk/HL1vLAKeB66DVa/tA0AKZlc8vaT
	RL/FL4Q+ZJowRM82unpKlDg=
X-Google-Smtp-Source: AK7set83cWYiZVpcioToieSmlzxFTlKKzp4DRW9vlg3BQqgdedyoVefdrfbNw9rskggzpAOe2UwOZg==
X-Received: by 2002:a05:651c:1725:b0:295:8ef2:8707 with SMTP id be37-20020a05651c172500b002958ef28707mr6623571ljb.2.1678361032827;
        Thu, 09 Mar 2023 03:23:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:be22:0:b0:293:12a9:1ca5 with SMTP id z34-20020a2ebe22000000b0029312a91ca5ls277094ljq.6.-pod-prod-gmail;
 Thu, 09 Mar 2023 03:23:51 -0800 (PST)
X-Received: by 2002:a2e:b8d2:0:b0:28e:b061:7a9b with SMTP id s18-20020a2eb8d2000000b0028eb0617a9bmr7687412ljp.42.1678361031112;
        Thu, 09 Mar 2023 03:23:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678361031; cv=none;
        d=google.com; s=arc-20160816;
        b=qNPLAjuoKzb5mg7b4pjLEJLOWIHCEfsJJ+Lsg/rYZGhkpK/YvfHpuFY4a3gd8R/coy
         /RRSAeqnHfPxju/P2E4htRWMHIH0pSwpNiVpgpowwWmZSAU8dJTLLeToJRh0YONOjYUO
         ifziwzFY5DAy9NNQplFhlk/PDSzyOcXYBgPa7WiV34BeWazw5sVvkWMPwSiLk+vz9jkR
         8PPtG0IuHqgyTGkyFrkYBpX5nDgdNwLEDg7CxAtMyO0eGwVerXxv0N4pvCIjhQ+u9DCo
         DCV+SCC4Pn+LGxWMwl/nLSyFTW5KhFhzDwiRJQD9KkZcxoizPg93BWPdgiPfUQEPE0je
         V0ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YqSixpZC9gbNYn5b1NENVoz0URUrk0IPtTIx4W+RQVw=;
        b=0EcT5zxWQokcd8FfVjcalIzqHwoCPPNGOhQS2ZoOWXOpxWxykxuTfZOUMI5E3iqkX5
         sDQSqlyIuRHpXDP73KsluQWbVbnvrXfO9RHoXH9N8vf1l+6thYYN+AjdX50KKOOSpyiX
         ukyHUmz+qReIPI5CCkA08c8K4yyymbtV98gEyLR1I38aRmV0KeU7r/PS505OjwhUMpPO
         iZHJ3U/hnSqC7sZa9AaKIHo3aLTE8Af53jNQiN9gsfgJOHOxUsLVkszt+0anfTAoEeYP
         U/M9EDt8eobZJbrKFhFRLIKa20Pp6i96kzr0RCsafs9TZQKnUSZe2DfKsA6+nBuUEi6v
         mKmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=iGEyKsaJ;
       spf=pass (google.com: domain of sabourousira@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=sabourousira@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id o4-20020a2ebd84000000b0029596269cbasi833274ljq.3.2023.03.09.03.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 03:23:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sabourousira@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Received: by mail-wr1-x42b.google.com with SMTP id l1so1466614wry.12
        for <clang-built-linux@googlegroups.com>; Thu, 09 Mar 2023 03:23:51 -0800 (PST)
X-Received: by 2002:a05:6000:1364:b0:2cc:4c4e:793e with SMTP id
 q4-20020a056000136400b002cc4c4e793emr4184907wrz.13.1678361030481; Thu, 09 Mar
 2023 03:23:50 -0800 (PST)
MIME-Version: 1.0
From: Sarah Owen <sarahbaby070@gmail.com>
Date: Thu, 9 Mar 2023 11:23:38 +0000
Message-ID: <CA++-uOCktUEFVTY8BVEA9B7Oe0QhOJMhwR5QpoGLvbkYZESqAg@mail.gmail.com>
Subject: Hi
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000006dc9405f675e1bb"
X-Original-Sender: sarahbaby070@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=iGEyKsaJ;       spf=pass
 (google.com: domain of sabourousira@gmail.com designates 2a00:1450:4864:20::42b
 as permitted sender) smtp.mailfrom=sabourousira@gmail.com;       dmarc=pass
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

--00000000000006dc9405f675e1bb
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B%2B-uOCktUEFVTY8BVEA9B7Oe0QhOJMhwR5QpoGLvbkYZESqAg%40mail.gmail.com.

--00000000000006dc9405f675e1bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2B%2B-uOCktUEFVTY8BVEA9B7Oe0QhOJMhwR5QpoGLv=
bkYZESqAg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2B%2B-uOCktUEFVTY8BVEA9B7Oe0=
QhOJMhwR5QpoGLvbkYZESqAg%40mail.gmail.com</a>.<br />

--00000000000006dc9405f675e1bb--
