Return-Path: <clang-built-linux+bncBCJ4HEMQYEKRB2VCX6CQMGQEPBQHWXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id E10BD393486
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 19:05:47 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id t16-20020a92d1500000b02901c521a389f7sf670994ilg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 10:05:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622135146; cv=pass;
        d=google.com; s=arc-20160816;
        b=z3D++ZgU57LtUrQR8f32/8Gj/+f7my2T7mTt+4/RvHb+P77EgiLiRV7Tkay6fLKRpn
         xEqPqnsu7+WfIBF8A/KA7y8gL4LYMDIm5Y4iW0ex1BvqL6xk/KeWzcI67DI3WjtEVNJr
         VY6+JZWYcTTK+L2iJ5aCjgVi2jObij1RWF8AquD5DBVnLmeQNNrHfCFhC/DycXRpPjZ0
         inaFj2os6Wzd3JzmTj9iFd7wddGnK0KA+ql8isB39JrI3VZdi172RRUAJUCc6MGPpwCV
         bxrmyiJ0Ve5Y9F6ETniANVh5fOLgaEgD2LoVMOfdll/gtxPpLMaZM7jrGDKlAaaov4VK
         do3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=lILvYlv3Y4lCsbB532ka/KDYPnNKNUEjlPTfamAknqU=;
        b=07mje3qZxh0I2eMnCNaXwoTyPiai20ocukR6ySHUEE7TbfHMkx5FkMiDliSKQl+Yp/
         ss0XXY3oJ296MYfopLqbzoCsaMprs7+A+iMGGevsGFCs4Dv990eC+CFyh/wECIZHueJO
         hBdlKvI7E2/L7QwII6WliDstPBcw/Ft3JlfpvWjkTpWSIzCqjt8fGrdfSOKgg58Z3pnu
         Cjl8o8bVIbuv7931C5liyZ4FGgzKxBhycSyHvaG2S5dADhqrhs5jcoEjAR4h5BXZf8ca
         TtW/iIowydmLIFkhFSB1Vx1L8EF5ka3AKQuJW/BJsisF0LJEZJ1WyT6yuvuGKEaXt6+0
         G3Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=LzIfXZDh;
       spf=neutral (google.com: 66.163.189.152 is neither permitted nor denied by best guess record for domain of casey@schaufler-ca.com) smtp.mailfrom=casey@schaufler-ca.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lILvYlv3Y4lCsbB532ka/KDYPnNKNUEjlPTfamAknqU=;
        b=DrbL0Qi1o0Nps92FjHR6wU2SA+B75YGRXq2kc/pUSPiJqDZle09Cmspos0o4B3yM8O
         Bp+p3G4+lGuYmN3qNUlYU850Hxb+Mgk3C8uLg3H1uv++kPjIcgW9vBrjF5vCCj0wv8K1
         e0WJp2j5Vp6hP9vuc+DwFteVWVHwr/iNLQKh3WZQxVxhVVXrZ+OJEVlYY/E5BK+SFkUf
         CaF0JqlwU9qEDyMf8VosvUG/HewH8sJmaWmLmUOZTJbnpjhrqEZiddI0kc/lapTS+Jkd
         3GWKG/eu5XpS90cJFg0NRSC4B6ZwVUWfAw5h2aWLZZdUhkJEwxPUIgbkwS5RpFBDi6Lt
         RjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lILvYlv3Y4lCsbB532ka/KDYPnNKNUEjlPTfamAknqU=;
        b=geymPhU+f/+Y2ugxTwBlRosmVhqBLOLyGjte8T2Bjw+QuZXD7tBuW18r3lZ/HIsQBR
         KfDktpZTCGuJpX6gd2/jQ0Bwu9i+QvMjMC4sIBtplBia8pftjXjFFxZe05YIOpWPicoj
         IG3o4T4Ny5oT8tEwpIkwAKFJPOOTGoSz6jD7aPDCaw57N8vR4YrbM/3SKLXT+tWcZ1Zo
         6e3u2S91VFdK3jFpNFhqE+RrNcYVUI0kCs9nJA0usLGZ8jGzkrXk5VJ+GYEsHadX90Bx
         30YXs4QKOTNjfCr6LkGGO2GtPbwOxoW3EZ/fibkHp5CDDmMhQLgxWL33plpfN/Mo2kze
         qbrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fggF0zVDvNFmFgwEmp7ndJxnUIOUauhfi6rsCaTiIqbHb16qe
	WnJwoqQx4af8n8GYtZAHWU4=
X-Google-Smtp-Source: ABdhPJw0tFNd1Zkmq2wfGAcF2YjLGsAJgLp+nCASpSuK5mVSMuxgIv43gp/Oj7Fe6HIkE6qfo5YJZQ==
X-Received: by 2002:a02:7a5b:: with SMTP id z27mr4339080jad.118.1622135146514;
        Thu, 27 May 2021 10:05:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ca4e:: with SMTP id i14ls568211jal.2.gmail; Thu, 27 May
 2021 10:05:46 -0700 (PDT)
X-Received: by 2002:a02:294d:: with SMTP id p74mr4479771jap.132.1622135146088;
        Thu, 27 May 2021 10:05:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622135146; cv=none;
        d=google.com; s=arc-20160816;
        b=xvSnU6WTQ2+m8YMYhRfhOznL1/dYMqn5HGITIwQOoct2VrtBEBz/+e5eGtqDOBhIkg
         gwhl7NBI9NCO6wC2UBX9d9EuZ0Sx+qNDYvy+twNhqPqPWs8qPfK7c7TWlHCz7UerYMla
         rtWPOTBokyJIAenpyNd+g9qWG+gQVJqt+4Tbxe7J7o6VyfnNqH8x15xBzhaCjJEnKhWe
         YeXwGl1Yo+vvXY9OVdycAUSrdp+nH8EX18e5br3+j8LQk2mtRhvhGbIg3bWBuwsODcPf
         Q+J+S8Y074uVKfkEl9d5tsQ5vKRj6Uak7WMpldcW0Mn/yzt+6gOv2eQkRZX0lB5tYNOd
         V2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=u6GFmi+eR/n6StK0dBZVA4kg5kqcQ+rdt27+dzUPMSY=;
        b=CGh2rEbdAlbcjNW4Hkzry+CVOZ3B4wXk89FZyCh51xbGTFa3HUOo3ccBM9tt+Yi0mn
         b98Mhb0rBxUugoMJANOKwUSoeQFIYsi8geyEkYUPsxQS2ZKBCW5wy3O2yt7ygkEp1/Gq
         WvFv9mkBvCjsVZ157NvTNxA0QkriEGChz3Vk5D0P04FU3e2I2CglwO2WQlg42U1RTKFQ
         IFh6cEp6mtK5MfhpnUXx2ZfBxEuhXBzP1yhWFW+7AVMWpJV+4i3ErV1BBhan0KPH+vpM
         RiqSLMEzl+1En1dI2iM50sHQvmDOiJkqqjb+RdBIgqQ8CpcMRNUpHAtRTEzIyFLORByr
         G/NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=LzIfXZDh;
       spf=neutral (google.com: 66.163.189.152 is neither permitted nor denied by best guess record for domain of casey@schaufler-ca.com) smtp.mailfrom=casey@schaufler-ca.com
Received: from sonic314-26.consmr.mail.ne1.yahoo.com (sonic314-26.consmr.mail.ne1.yahoo.com. [66.163.189.152])
        by gmr-mx.google.com with ESMTPS id r20si269350ilj.3.2021.05.27.10.05.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 May 2021 10:05:45 -0700 (PDT)
Received-SPF: neutral (google.com: 66.163.189.152 is neither permitted nor denied by best guess record for domain of casey@schaufler-ca.com) client-ip=66.163.189.152;
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1622135145; bh=08uRjCsKqwdhED+AiXT157umYagvOotTU14AzAHm47G=; h=X-Sonic-MF:Subject:To:From:Date:From:Subject; b=k3PpNoqaONkI1NDpbGXghESgMn7Hy9Yupo0EDvq0aAEZClOn0xWCFk8ZfgpzojJhoS7MuXcOx0eunLK2AuP7Vw/ACIFTO4m7IvVnDOX0mLQjaGGhQ/tAydAobyRxS2onP5y98UESrhA37AiBaykvpcTi0Wqs5qG2PlV32UxADsQpVrSyPutwkk9dhYu6jn6+Nzf0mghAQ4RZbIKIGmDGTa3/+MNwtTM33NebQJHNaAXEpNxPY8wn3huLvN5oBzDaQPg6lVybhNkIGsGjd47xTyYnGlVboryrVCzEkhLJoQu0r7IGp+jkxQEZi8p9x2KXYcULSOfL70zAk7EKIBCFBw==
X-YMail-OSG: kZeDwyYVM1lBd1VM68_pFsknsPOh1hM.D1R1B7qpYS1RwvXP7gPDsghr70SVXcx
 8Df4h8OSB_ZJFNAe8E4yBIEi_gEa63EeXlvS1zzVUtRb.QyS4OBCRSaPzbWVbAH1S24diAqUZr4s
 XrhDtHA1Vbvj_5e94RlW.t_6BJx.xiqnOmqHO87XDWkrsr2et9ajk_MQVg8k.89R3OMPimN9ZAZq
 4RFETPxNUcVXoGlD6nrLwduwJyNUVI5C99dkJGbXGFnt3YTnBtfS6l5KgirxP.94ttM2H.ib0rKz
 uHRzQ5OY0BbSpp_HAh8biMRLYiiSzCDCMcPJPxWtbnH..Kiwy5zvCndVzrBK0q2fzCqvzcG3Tvaf
 DyYvC2DOsHw21q1Voapnqj4d6_xFtYVV7VMa3N1HVUFirEDP3BoMcf36i0Xb7ewm8H3vK67BlO.q
 1wXU_Pa5dSQRDU1Tt7T0gIXbpHYScsqUOFJRyZSMWiHi92jVrDa_hcqMEknPxzs3UkU0587LjKjN
 A.704sZraZY7l_QnbBMnAqmbGfExVPlDeT063YlUUH3oy4twWTTNCQ9TD8CEboNi21lqBai_Ij9I
 MiQ8ElT8RHFMFedRbASoXcQg_FRq.YCCC6VD4GwI4RafxpvVnOKNJ2fzWfkvsbWSTvd5rMWLer6L
 KUINNJhgRqGAIKjieTlzpE_aWimPrH6G1sCPBNCXqyzZ4Ax47EJv.t6aPLlmcOe0HGx7xKV4yR9g
 oVynDSXenZeBosen4JmX9j9gJN2AvMMSpBeX0UCAuHHghvHEpkJBaJ9HPkwdwC3y7YASVsi7TY6.
 QlC1vaIhQjocopndchr4tSVPPxneBOS9rB9HU1jm9yNRMKjrRi2QboxM8kfV8EbT9EUo4EbONJg7
 4CzSN.ClplIotVB6GZcvfe9luvWl0q.oMCGGzqMywD1iWDXN3jY6oJ3sE2cW1nWp548NzmAzy0jK
 vT4B.yMfRe5Q.jU7OfyPQy4PXt0e9Bohb2pu6oJneb4EbyKWSxUOR3_59I2oe1WCHl_7b_MoXwQb
 dfqp1GTdl8y.Twf7R5in1fErSZ22LfHWIVkPHarQIwRt2Nwz6zWYLWhoFvYPcL20UdXAxslXRza8
 GgyRSsqOR1Q37XWl7_Qpw4MIk2Ob4unTQiX8MGdoPUaKAF6i0hxgUm2MUIs2WAM2YmpmBSCHpJRU
 J3pRDkyCuXVhDVZpw8Y_WNQPXD5VaP3il2kmvtcmu4ExJ5kk4Dn_WZaipaSDJ.Kor2tWHJOKSZpE
 iwjm5jyaOEmV0kp5yptjngnqhsuwlYmB9l2l9YPgv.0XYzFPiYpMnhGGsRUjKw41XWV6YhnWC.NQ
 J_oVoRKF3oGFqNayuTGoEnEXjtz59IAyOjACVe88SI36ShRhqCkM3CTVuwiYGDFgB8uyOeHoTYPt
 hIwNOYByAYqudzPOBfGrbYRjA.9aZjD6ihf0ZVzPWmHFRw9a922AMqb74jLDC0taIh5EOpSl0We4
 1pf_yya8wadT7iitac7WyAy_L5vtQ27BeCDyz2td0i1EAFAYDaLFPM_ScGIkxPHYpO8OwcYPLtCn
 DdhoR4WeoNPukx0QtQj77mx38V1d7Om6rWqm_8U2suOkpi_4P.jmf.yQvqx5hfOPJFr_ObYehnI4
 il9JPlN73A7u820qCInWD77NKI3YriXNdexRQF7yQMu.MKRdto_VbnHTdxNILn5EgdYU2a5iLVmk
 67intGBPxhwEgPRbFxHCuc304uXkjrnpDPGXdwm7UM3YK0amS6Dkd9StAFseyrF9JOZfx2eD.AzG
 FUoCCZIVgCNW7inPmJeH5ZzCOvvnC3vX3UBKfDSFGg7B.tV0h_xaNn6CeLnyXRGPKdKjk5JDYVcb
 J1qpthYZBTWohhKlF0p.GagfzCpFVa5PF.7T4ErN6Mn2TThYjIZu5JMs5fmWZ3fWYD5Cs1k4OLs4
 5wWXJJxNIRkPMGmx.MycsdwHc4FthYYy_QLtnkSg6TN_bdo1KqMkbxWpzDJaL733FjdRJTEbx4Lb
 774wvzmjMAIo4HLsoDFPVFTaT9ScPSnx8DEvKgwWQiLjGrwsZovmmT2QzaDv94H7K_z99XydC1t.
 8LDZrOqQudjUNQfdIaHC5SRgfwGWLH0U0_ulaV4QnBnRCZJmLANxKc.XelXeD.gLsysDSoDRX0cz
 hkyE5EYkFDMiW6JJORPtR57c7JlraHCw32Bg2RA2LqqIl51cSNG.mHal1yFzlqG6Ic_XKubhex9E
 cQqs632ZOWgBkp0EEznqylG79sne2ut0IQG42K1mXbjtFKlNx_BAM5fvV4JAbJHU16Hfh3bzumco
 zGCDh049H5eJHJ8O.ENiv_JOTsvrwgm7To1Vb0T45sO.MbUAK3_e4SG7lClODVhFEvDmHvVs_1AL
 37G7NVVr1BD.iSIQmdlB4bg7YRNndqo6ceesjQAyarg_YkmAAbcKS6PSbZ9MBK.UN1Rb8yxoKQED
 cPaKPnYtGRhSUR18CaVNzratk29mVNYAejgNfHnB9r3SzMJCIhkc4RN1C8xFtpwKOv1p1CAig.Om
 nXdP6hZh_uEptab6YlPkHSp1eOWQ5bFth7htSF6_akpbmFUkXQP_J9mSaqsFVW5_5ry1ecOuyULy
 zgVf2T83YkNZEOQdbOvTxrAooDrBYqgeGIsxknJxhknufj7XdrNN8gG3nUrP0JACfD.0LSFeEKCO
 DSGOxEsU7JAp6p4szCY9CND0SSrTC3AyA5VtgIeThQ53JgxvzEqDwyqubgsF25WUABPaicUdoz_U
 MV7GnOQoYxkiTq9Ozeocj4Euxr2.3UMYGbVtc0.nawcjGM3vuxd5qDxwrC4iZoyopgK4.qzHC5yC
 UdOI38OdAxj79itnMStFxX6bXK2R.YFQhzmCJbiuLNkVD58xyoD3JLqw-
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.ne1.yahoo.com with HTTP; Thu, 27 May 2021 17:05:45 +0000
Received: by kubenode575.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 6fc88eb2aa808b1b1f97e6646d642118;
          Thu, 27 May 2021 17:05:41 +0000 (UTC)
Subject: Re: [pcmoore-selinux:working-io_uring 9/9]
 security/smack/smack_lsm.c:4702:5: warning: no previous prototype for
 function 'smack_uring_override_creds'
To: Paul Moore <paul@paul-moore.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 selinux@vger.kernel.org, Casey Schaufler <casey@schaufler-ca.com>
References: <202105270909.1fgRW8Wk-lkp@intel.com>
 <CAHC9VhRy=oD=B9G_ZZejPX0dL1+vsyLkYLs59vj-SJoeVMs53g@mail.gmail.com>
From: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <e061750d-9591-ac2c-5331-85456c3b4135@schaufler-ca.com>
Date: Thu, 27 May 2021 10:05:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <CAHC9VhRy=oD=B9G_ZZejPX0dL1+vsyLkYLs59vj-SJoeVMs53g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Mailer: WebService/1.1.18368 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Original-Sender: casey@schaufler-ca.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=LzIfXZDh;       spf=neutral
 (google.com: 66.163.189.152 is neither permitted nor denied by best guess
 record for domain of casey@schaufler-ca.com) smtp.mailfrom=casey@schaufler-ca.com
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

On 5/27/2021 8:29 AM, Paul Moore wrote:
> On Wed, May 26, 2021 at 9:51 PM kernel test robot <lkp@intel.com> wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git working-io_uring
>> head:   1f25193a3f5495eefbc9826b1de1a008a2439351
>> commit: 1f25193a3f5495eefbc9826b1de1a008a2439351 [9/9] Smack: Brutalist io_uring support with debug
>> config: x86_64-randconfig-r013-20210526 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install x86_64 cross compiling tool for clang build
>>         # apt-get install binutils-x86-64-linux-gnu
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git/commit/?id=1f25193a3f5495eefbc9826b1de1a008a2439351
>>         git remote add pcmoore-selinux https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git
>>         git fetch --no-tags pcmoore-selinux working-io_uring
>>         git checkout 1f25193a3f5495eefbc9826b1de1a008a2439351
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> security/smack/smack_lsm.c:4702:5: warning: no previous prototype for function 'smack_uring_override_creds' [-Wmissing-prototypes]
>>    int smack_uring_override_creds(const struct cred *new)
>>        ^
>>    security/smack/smack_lsm.c:4702:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>    int smack_uring_override_creds(const struct cred *new)
>>    ^
>>    static
>>>> security/smack/smack_lsm.c:4739:5: warning: no previous prototype for function 'smack_uring_sqpoll' [-Wmissing-prototypes]
>>    int smack_uring_sqpoll(void)
>>        ^
>>    security/smack/smack_lsm.c:4739:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>    int smack_uring_sqpoll(void)
>>    ^
>>    static
>>    2 warnings generated.
> FYI, Casey I took the liberty of making the Smack functions static (I
> had made the same mistake with the SELinux code).

Thank you. If there was any doubt, the Smack function declarations
were taken directly from the SELinux versions. 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e061750d-9591-ac2c-5331-85456c3b4135%40schaufler-ca.com.
